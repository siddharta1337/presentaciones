// Default empty project template
#ifndef PruebaRevolucionMobi_HPP_
#define PruebaRevolucionMobi_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class PruebaRevolucionMobi : public QObject
{
    Q_OBJECT
public:
    PruebaRevolucionMobi(bb::cascades::Application *app);
    virtual ~PruebaRevolucionMobi() {}
};


#endif /* PruebaRevolucionMobi_HPP_ */
