package com.kh.mvc.gym.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Voucher {
	private int voucherNo;
	private int  gymNo;
	private String cate;
	private String Gym_name;
	private String gym_name;
	private String voucherName;
	private int basketNo;
	//1일권
	private int price;
	private int price3;
	private int price6;
	private int price12;

	public void setVoucherNo(int voucherNo) {
		this.voucherNo = voucherNo;
	}

	public void setGymNo(int gymNo) {
		this.gymNo = gymNo;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}
	//개월계산(3개월은 5%, 6개월은 10%, 12개월 15%)
	public void setPrice(int price) {
		this.price = price;
		this.price3 = (int)(price * 3 * 0.95);
		this.price6 = (int)(price * 6 * 0.90);
		this.price12 = (int)(price * 12 * 0.85);
		
	}

	public void setGym_name(String gym_name) {
		Gym_name = gym_name;
	}
}
