var doctors = [
  {
    "image":
        "https://images.unsplash.com/photo-1537368910025-700350fe46c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Aditya Sharma",
    "skill": "Physician",
    "review": 540,
    "distance": "1.2 KM"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Rittik Rana",
    "skill": "Neurologists",
    "review": 710,
    "distance": "2.8 KM"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1625498542602-6bfb30f39b3f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "name": "Dr. Devi Shethhi ",
    "skill": "Dentist",
    "review": 120,
    "distance": "4.2 KM"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1618498082410-b4aa22193b38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Rishita Kumari",
    "skill": "Dentist",
    "review": 110,
    "distance": "3.7 KM"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
    "name": "Dr. Tanmay Shrivastava",
    "skill": "Neurologists",
    "review": 434,
    "distance": "6.5 KM"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Sachin Gupta",
    "skill": "Physician",
    "review": 410,
    "distance": "7.0 KM"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1594824476967-48c8b964273f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "name": "Dr. Sonu Kalgan",
    "skill": "Physiotherapist",
    "review": 330,
    "distance": "9 KM"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1591604021695-0c69b7c05981?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Sanhita Chatterjee",
    "skill": "Neurologists",
    "review": 310,
    "distance": "8.2 KM"
  },
];

var chatsData = [
  {
    "image":
        "https://images.unsplash.com/photo-1537368910025-700350fe46c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Aditya Sharma",
    "skill": "Dermatologists",
    "last_text":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "1 day ago",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Sonu Kalgan",
    "skill": "Physiotherapist",
    "last_text":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "3 hours ago",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1591604021695-0c69b7c05981?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Devi Shethhi ",
    "skill": "Dentist",
    "last_text":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "6 months ago",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80",
    "name": "Dr. Sachin Gupta",
    "skill": "Physician",
    "last_text":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "2 months ago",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1625498542602-6bfb30f39b3f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    "name": "Dr. Tanmay Shrivastava",
    "skill": "Neurologists",
    "last_text":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "1 hour ago",
  },
  {
    "image":
        "https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
    "name": "Dr. Rishita Kumari",
    "skill": "Dentist",
    "last_text":
        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document",
    "date": "1 min ago",
  },
];
