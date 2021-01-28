package com.cos.fedex.domain.post;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Post {
	private String username;
	private String receivername;
	private String receiveraddress;
	private String receiverpostcode;
	private int size;
	private String sort;
}
