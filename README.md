# 🎉 VIP SQL Join Project

This repository contains a **small SQL project** demonstrating six different types of joins using VIP, event, and hotel data. It includes SQL queries, screenshots of the results, and summarized insights.

---

## 📂 Project Structure
MyProject/
├─ join1.sql … join6.sql # SQL join queries
├─ joinresults/ # PNG screenshots of query results
├─ insights.md # Detailed query insights
└─ README.md # Project overview (this file)

---

## 📝 Description of Queries

| Query | Type | Purpose |
|-------|------|---------|
| join1.sql | LEFT JOIN | Shows all VIPs and their assigned events |
| join2.sql | INNER JOIN | Lists VIPs with hotel reservations |
| join3.sql | MULTIPLE JOIN | Combines VIP info, hotel, and RSVP status |
| join4.sql | AGGREGATION JOIN | Counts VIPs per event |
| join5.sql | SELF JOIN | Shows which VIP gives feedback to whom |
| join6.sql | LEFT JOIN COMBINED | Complete VIP + Event + Hotel overview |

---

## 📊 Insights

For detailed insights and observations for each query, see [insights.md](insights.md). Screenshots of query results are included in the `joinresults/` folder.

---

## ⚡ How to Run

1. Open your SQL database (MySQL, PostgreSQL, etc.).  
2. Execute the `.sql` files in order or individually.  
3. Compare results with the screenshots in `joinresults/`.  

---

## ✅ Key Takeaways

- `LEFT JOIN` ensures no VIP or event is missed.  
- Aggregation queries show **event popularity**.  
- Self-joins reveal **relationships between VIPs**.  
- Combined analytics provide **a full overview of VIP participation**.

---

*All SQL queries are in the root folder. Screenshots are in `joinresults/`, and detailed insights are in `insights.md`.*