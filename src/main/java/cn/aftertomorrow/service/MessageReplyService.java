package cn.aftertomorrow.service;

import java.util.List;

import cn.aftertomorrow.po.MessageReply;

public interface MessageReplyService {
	public void addMessageReply(MessageReply messageReply);

	public List<MessageReply> findByGuestmessage_id(Integer guestmessage_id);
}
