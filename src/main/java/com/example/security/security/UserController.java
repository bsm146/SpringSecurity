package com.example.security.security;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;


    @GetMapping
    public String root() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login(){
        System.out.println("login()");
        return "login";
    }

    @GetMapping("/signUp")
    public String signUpForm() {
        return "signUp";
    }

    @GetMapping("/access_denied")
    public String accessDenied() {
        return "access_denied";
    }

    @PostMapping("/signUp")
    public String signUp(UserVo userVo) {

        System.out.println("signUp()");
        userService.joinUser(userVo);
        return "redirect:/login";
    }


    @GetMapping("/user_access")
    public String userAccess(Model model, Authentication authentication) {
        UserVo userVo = (UserVo) authentication.getPrincipal();  //userDetail 객체를 가져옴
        model.addAttribute("info", userVo.getUserId() +"의 "+ userVo.getUserName()+ "님");      //유저 아이디
        return "user_access";
    }
}