package com.security.controller;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

public class SendSMS {
  // Find your Account Sid and Token at twilio.com/console
  public static final String ACCOUNT_SID = "AC42bed347f86974c96c8ffc1806aedf86";
  public static final String AUTH_TOKEN = "a07f532610970c9ed62720f242138bd1";

  public static void main(String[] args) {
    Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
    //
    Message message = Message.creator(
      new com.twilio.type.PhoneNumber("+14052748404"),
      new com.twilio.type.PhoneNumber("+18559323899"),
      "Your Registration is successful for username : rajat")
    .create();

    System.out.println(message.getSid());
  }
}