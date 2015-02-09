#ifndef LOG_H
#define LOG_H

#include <boost/log/common.hpp>
#include <boost/log/expressions.hpp>

#include <boost/log/utility/setup/file.hpp>
#include <boost/log/utility/setup/console.hpp>
#include <boost/log/utility/setup/common_attributes.hpp>

#include <boost/log/attributes/timer.hpp>
#include <boost/log/attributes/named_scope.hpp>
#include <boost/log/attributes/attribute_set.hpp>


#include <boost/log/sources/logger.hpp>

#include <boost/log/support/date_time.hpp>
#include <boost/thread.hpp>


namespace logging = boost::log;
namespace sinks = boost::log::sinks;
namespace attrs = boost::log::attributes;
namespace src = boost::log::sources;
namespace expr = boost::log::expressions;
namespace keywords = boost::log::keywords;
using boost::log::v2s_mt_nt5::attribute_set;
using boost::shared_ptr;

// Here we define our application severity levels.
enum severity_level
{
    normal,
    notification,
    warning,
    error,
    critical
};

// The formatting logic for the severity level
template< typename CharT, typename TraitsT >
inline std::basic_ostream< CharT, TraitsT >& operator<< (
        std::basic_ostream< CharT, TraitsT >& strm, severity_level lvl)
{
    static const char* const str[] =
    {
        "normal",
        "notification",
        "warning",
        "error",
        "critical"
    };
    if (static_cast< std::size_t >(lvl) < (sizeof(str) / sizeof(*str)))
        strm << str[lvl];
    else
        strm << static_cast< int >(lvl);
    return strm;
}

BOOST_LOG_INLINE_GLOBAL_LOGGER_DEFAULT(test_lg, src::logger_mt)

class CLog
{
private:
    src::logger_mt m_logger;
    std::pair< attribute_set::iterator, bool > attr;

public:
    void initTimer()
    {
        logging::add_console_log(std::clog, keywords::format = "%TimeStamp% %ThreadID% - %Duration%: %Timeline% %Message%");
        logging::add_common_attributes();
    }

    void startTimer()
    {
        BOOST_LOG_SCOPED_THREAD_TAG("ThreadID", boost::this_thread::get_id());
        attr = m_logger.add_attribute("Duration", attrs::timer());
    }

    void stopTimer(std::string message)
    {
        BOOST_LOG(m_logger) << message;
        m_logger.remove_attribute(attr.first);
    }

};

#endif // LOG_H
