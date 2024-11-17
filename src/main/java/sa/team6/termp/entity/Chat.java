package sa.team6.termp.entity;

import jakarta.persistence.*;

import java.time.Instant;

@Entity
@Table(name = "chat")
public class Chat {
    @Id
    @Column(name = "chatID", nullable = false, length = 30)
    private String chatID;

    @Column(name = "community", length = 20)
    private String community;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "userID")
    private Users userID;

    @Lob
    @Column(name = "chat")
    private String chat;

    @Column(name = "chat_time")
    private Instant chatTime;

    public String getChatID() {
        return chatID;
    }

    public void setChatID(String chatID) {
        this.chatID = chatID;
    }

    public String getCommunity() {
        return community;
    }

    public void setCommunity(String community) {
        this.community = community;
    }

    public Users getUserID() {
        return userID;
    }

    public void setUserID(Users userID) {
        this.userID = userID;
    }

    public String getChat() {
        return chat;
    }

    public void setChat(String chat) {
        this.chat = chat;
    }

    public Instant getChatTime() {
        return chatTime;
    }

    public void setChatTime(Instant chatTime) {
        this.chatTime = chatTime;
    }

}