package cn.aftertomorrow.dao;

import java.util.List;

import cn.aftertomorrow.po.MessageReply;

public interface MessageReplyDao {
	public void addMessageReply(MessageReply messageReply);

	public List<MessageReply> findByGuestmessage_id(Integer guestmessage_id);
}
