// cron-notify.js - Run this every hour via cron-job.org
// This file runs COMPLETELY INDEPENDENT of your website

const ONESIGNAL_APP_ID = '40cfbe3f-800c-4105-b3aa-ca32676332b0';
const ONESIGNAL_API_KEY = 'os_v2_app_idh34p4abraqlm5kzizgoyzswb4xhwz45qnu6du72szadwuaxglazhrzdezgl7xoat43nps2nojsz4j3kypjqxpty3sj7ohgi2aihki';

// DARK HUMOR MESSAGES (Rotates automatically)
const DARK_MESSAGES = [
    { title: "💀 Existential Crisis", body: "Your jeans will outlive you. Make sure they're stylish ones. 👖" },
    { title: "🔮 Your Future", body: "I see jeans in your future. And debt. Mostly debt. Worth it though!" },
    { title: "⚰️ Breaking News", body: "Local person spends money they don't have on jeans they don't need. More at 11." },
    { title: "👻 Spooky Fact", body: "Your money isn't gone... it's just... fashionably late. Forever." },
    { title: "🤡 Clown Update", body: "You're one step closer to looking like a million bucks. Too bad you spent it all on jeans." },
    { title: "📉 Financial Advice", body: "Money can't buy happiness. But it can buy jeans. That's basically the same thing." },
    { title: "🍷 Poor Decisions", body: "Every great love story starts with a bad decision. These jeans are your soulmate." },
    { title: "🎪 Circus Alert", body: "Your financial literacy left the chat. But your drip? IMMACULATE." },
    { title: "🪦 Epitaph", body: "Here lies your savings. Cause of death: 'But they were on sale!'" },
    { title: "📢 PSA", body: "Warning: Excessive denim consumption may lead to happiness, confidence, and bankruptcy." }
];

// Send notification to ALL subscribers (WORKS EVEN WHEN PHONE IS ASLEEP)
async function sendToAllSubscribers(title, body, data = {}) {
    const response = await fetch('https://onesignal.com/api/v1/notifications', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Basic ${Buffer.from(ONESIGNAL_API_KEY).toString('base64')}`
        },
        body: JSON.stringify({
            app_id: ONESIGNAL_APP_ID,
            headings: { en: title },
            contents: { en: body },
            data: data,
            included_segments: ['Subscribed Users'],
            priority: 10, // High priority - wakes phone
            ttl: 86400, // Keep for 24 hours
            chrome_web_icon: 'https://i.ibb.co/rKnKMscG/67556a31-02c7-4182-a1d8-c12667bd7136.jpg'
        })
    });
    
    const result = await response.json();
    console.log(`[${new Date().toISOString()}] Sent: ${title} - Result:`, result.id);
    return result;
}

// Send to specific user
async function sendToUser(userId, title, body, data = {}) {
    const response = await fetch('https://onesignal.com/api/v1/notifications', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Basic ${Buffer.from(ONESIGNAL_API_KEY).toString('base64')}`
        },
        body: JSON.stringify({
            app_id: ONESIGNAL_APP_ID,
            headings: { en: title },
            contents: { en: body },
            data: data,
            include_external_user_ids: [userId],
            priority: 10,
            ttl: 86400
        })
    });
    
    return await response.json();
}

// ===========================================
// AUTOMATIC SCHEDULED NOTIFICATIONS
// ===========================================

async function runScheduledNotifications() {
    console.log('🕐 Running scheduled notifications...');
    const now = new Date();
    const hour = now.getHours();
    const day = now.getDay();
    
    // 1. DAILY DARK HUMOR (9 AM)
    if (hour === 9) {
        const randomMsg = DARK_MESSAGES[Math.floor(Math.random() * DARK_MESSAGES.length)];
        await sendToAllSubscribers(randomMsg.title, randomMsg.body);
        console.log('✅ Daily dark humor sent');
    }
    
    // 2. WEEKEND SPECIAL (Saturday & Sunday at 10 AM)
    if ((day === 6 || day === 0) && hour === 10) {
        await sendToAllSubscribers(
            '🎉 WEEKEND DENIM SPECIAL! 🎉',
            'Double points on all purchases TODAY ONLY! Show this notification at checkout. 👖'
        );
        console.log('✅ Weekend special sent');
    }
    
    // 3. MIDNIGHT RESET (12 AM)
    if (hour === 0) {
        await sendToAllSubscribers(
            '🌙 Midnight Denim Thoughts...',
            'New day, new jeans! Your daily points have been refreshed. Shop now!'
        );
        console.log('✅ Midnight reset sent');
    }
    
    // 4. BIRTHDAY CHECK (8 AM)
    if (hour === 8) {
        await sendToAllSubscribers(
            '🎂 BIRTHDAY BONUS! 🎂',
            'Is it your birthday? Get 200 FREE points! Show your ID at checkout. Valid today only!'
        );
        console.log('✅ Birthday reminder sent');
    }
    
    // 5. LOW POINTS REMINDER (3 PM)
    if (hour === 15) {
        await sendToAllSubscribers(
            '⚠️ LOW POINTS ALERT!',
            'Check your points balance. Shop now to earn more and unlock bigger discounts!'
        );
        console.log('✅ Low points reminder sent');
    }
    
    // 6. FLASH SALE (6 PM)
    if (hour === 18) {
        await sendToAllSubscribers(
            '⚡ FLASH SALE! ⚡',
            'Next 2 hours: 20% OFF everything! Use code: FLASH20 at checkout.'
        );
        console.log('✅ Flash sale sent');
    }
    
    console.log('✅ Scheduled notifications complete');
}

// Run immediately when cron triggers
runScheduledNotifications();

// Keep alive for cron-job.org
console.log('Cron notification service running...');