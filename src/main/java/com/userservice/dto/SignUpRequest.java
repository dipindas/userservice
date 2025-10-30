package com.userservice.dto;

import lombok.Data;
import java.util.Set;

@Data
public class SignUpRequest {
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private Set<String> roles;
}
