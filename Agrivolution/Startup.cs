using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Agrivolution.Startup))]
namespace Agrivolution
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
