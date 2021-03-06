package com.cos.fedex.domain.user.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class JoinReqDto {
	private String username;
	private String password;
	private String phone;
	private String address;
	private String email;
	private String postcode;
}
