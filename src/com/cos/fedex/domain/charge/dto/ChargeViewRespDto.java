package com.cos.fedex.domain.charge.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ChargeViewRespDto {
	private int size;
	private String postcharge;
	private String sort;
}
