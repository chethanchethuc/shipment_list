using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Shipments.Startup))]
namespace Shipments
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
