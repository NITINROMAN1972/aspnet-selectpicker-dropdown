using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Choosen_Dropdown.Startup))]
namespace Choosen_Dropdown
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
