using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MentorAppFinal.Startup))]
namespace MentorAppFinal
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
