package com.cos.fedex.domain.user.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class UpdateReqDto {
	private String username;
	private String password;
	private String phone;
	private String address;
	private String email;
	private String postcode;
}
