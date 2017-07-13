package donar

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Configuration
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter
import org.springframework.security.core.userdetails.UserDetailsService;

//unnecessary if passwordEncoder is defined as `def passwordEncoder`
import org.springframework.security.crypto.password.PasswordEncoder

@Configuration
@EnableWebSecurity
class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers('/register/**').hasAnyRole('ANONYMOUS')
                .antMatchers('/admin/**').hasAnyRole('ADMIN')
                .antMatchers('/schedule/**').hasAnyRole('ADMIN')
                .antMatchers('/generateList/**').hasAnyRole('ADMIN')
                .antMatchers('/dashBoard/**').hasAnyRole('USER', 'ADMIN')
                .antMatchers('/appointment/**').hasAnyRole('DONAR')
                .antMatchers('/donar/**').hasAnyRole('DONAR')
                .antMatchers('/donationHistory/**').hasAnyRole('DONAR')
                .antMatchers('/healthHistory/**').hasAnyRole('DONAR')
                .antMatchers('/message/**').hasAnyRole('DONAR')
                .antMatchers('/profile/**').hasAnyRole('DONAR')
                .antMatchers('/reward/**').hasAnyRole('DONAR')
                .antMatchers('/').permitAll()
                .and()
                .formLogin()
                .loginPage("/")
                .loginProcessingUrl("/login")
                .defaultSuccessUrl("/dashBoard")
                .failureUrl("/")
                .permitAll()
                .and()
                .logout()
                .logoutSuccessUrl("/")
                .permitAll()

        // Added *ONLY* to display the dbConsole.
        // Best not to do this in production.  If you need frames, it would be best to use 
        //     http.headers().frameOptions().addHeaderWriter(new XFrameOptionsHeaderWriter(XFrameOptionsMode.SAMEORIGIN));
        // or in Spring Security 4, changing .disable() to .sameOrigin()
        http.headers().frameOptions().disable()

        // Again, do not do this in production unless you fully understand how to mitigate Cross-Site Request Forgery
        // https://www.owasp.org/index.php/Cross-Site_Request_Forgery_%28CSRF%29_Prevention_Cheat_Sheet
        http.csrf().disable()

    }

    @Autowired
    UserDetailsService userDetailsService

    //Could also be defined as `def passwordEncoder`
    @Autowired
    PasswordEncoder passwordEncoder

    @Autowired
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userDetailsService)
                .passwordEncoder(passwordEncoder)
    }

    @Autowired
    protected void globalConfigure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(userDetailsService)
                .passwordEncoder(passwordEncoder)
    }

}