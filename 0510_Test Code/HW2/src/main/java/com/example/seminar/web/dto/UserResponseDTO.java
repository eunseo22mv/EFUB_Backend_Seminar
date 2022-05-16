package com.example.seminar.web.dto;

import com.example.seminar.domain.User;
import com.example.seminar.domain.UserType;
import lombok.Getter;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Getter
public class UserResponseDTO {
    private String name;

    @Enumerated(EnumType.STRING)
    private UserType type;

    public UserResponseDTO(User entity){
        this.name = entity.getName();
        this.type = entity.getType();
    }
}
