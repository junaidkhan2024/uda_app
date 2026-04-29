# db/seeds/uda_members.rb
# Run with: bin/rails runner db/seeds/uda_members.rb

members = [
  # Page 7
  { first_name: "Junaid", last_name: "Khan", qualification: "BUMS, MD (PSM), PGDEMS", registration_number: "I-70363-D", hospital_or_clinic_name: "AL HAMD Clinic", area: "Bhagyoday nagar kondhwa", phone: "9833763903", email: "dr.khanjunaid@gmail.com" },
  { first_name: "Shaikh Ausaf", last_name: "Ahmed", qualification: "BAMS PGDEMS MBA LLB", registration_number: "I-57768-A", hospital_or_clinic_name: "Ausaf Clinic / Unique Hospital", area: "Nana Peth / Somwar Peth", phone: "9890137020", email: "ausaf710@gmail.com" },
  { first_name: "Asif", last_name: "Ansari", qualification: "BUMS (Alig), MD (NTRUHS)", registration_number: "I-46446", hospital_or_clinic_name: "ZVM Unani College", area: "Azam Campus, Camp", phone: "9325357577", email: "dr.asif1976@gmail.com" },
  { first_name: "Mukhtar M.", last_name: "Shaikh", qualification: "L.C.E.H.(BHMS), C.Ac.", registration_number: "9866", hospital_or_clinic_name: "", area: "Kondhwa Budruk", phone: "8855017583", email: "mukhtarmshaikh@gmail.com" },
  { first_name: "Shabbir", last_name: "A.A", qualification: "BAMS, PGDEMS, CYA", registration_number: "I-53242-A", hospital_or_clinic_name: "Life Line Clinic", area: "Kondhwa BK", phone: "9423231419", email: "drshabbiranpin2@gmail.com" },
  { first_name: "Sajid T.M.", last_name: "Khan", qualification: "B.U.M.S.", registration_number: "I-49053", hospital_or_clinic_name: "Life Line Clinic", area: "Kondhwa BK", phone: "9890115230", email: "" },
  { first_name: "Shaheen", last_name: "S.A", qualification: "BUMS, PGDEMS, CGO, CCH", registration_number: "I-5189", hospital_or_clinic_name: "Noble Clinic / Prime Hospital", area: "Mominpura", phone: "9923427705", email: "noble811@gmail.com" },
  { first_name: "Tanzila N.", last_name: "Attar", qualification: "B.U.M.S CGO CCH", registration_number: "I-46849", hospital_or_clinic_name: "Maheen Clinic", area: "Khandoba Mal, Chakan", phone: "9822261641", email: "tanzila.attar@yahoo.in" },
  { first_name: "Shaila", last_name: "Shaikh", qualification: "B.U.M.S.C.G.O.", registration_number: "I-32669", hospital_or_clinic_name: "Shaila Clinic", area: "Mithanagar, Kondhwa", phone: "9423429925", email: "drshailalimbowale@gmail.com" },

  # Page 8
  { first_name: "Sadique", last_name: "Khan", qualification: "BUMS, MD", registration_number: "I-90324-D", hospital_or_clinic_name: "Welfare Hospital", area: "Kondhwa", phone: "9511295983", email: "drsadiquekhan9@gmail.com" },
  { first_name: "Zahira A.", last_name: "Rawoot", qualification: "BHMS, CGO, CCH", registration_number: "51586", hospital_or_clinic_name: "Rawoot Clinic", area: "Mithanagar, Kondhwa Khurd", phone: "9823295520", email: "drzahiraijaz@gmail.com" },
  { first_name: "Tabassum S.", last_name: "Tamboli", qualification: "BUMS CCH CGO", registration_number: "40558", hospital_or_clinic_name: "Tamboli Clinic", area: "Salunke Vihar, Kondhwa", phone: "9371923532", email: "" },
  { first_name: "Ayesha R.", last_name: "Dalal", qualification: "B.U.M.S. CGO CCH", registration_number: "I-39019", hospital_or_clinic_name: "Saad Clinic", area: "Mithanagar, Kondhwa", phone: "9373795233", email: "" },
  { first_name: "Farzana", last_name: "Khan", qualification: "BUMS", registration_number: "I-37545", hospital_or_clinic_name: "Hair Rich Transplants Restoration Centre", area: "MG Road, Camp", phone: "8788448850", email: "" },
  { first_name: "Jalil Shaukatali", last_name: "Mujawar", qualification: "MBBS (MUHS), DNB Paeds, MNAMS", registration_number: "", hospital_or_clinic_name: "Sahayadri Hospital", area: "Nagar Road", phone: "9405540555", email: "drjalilmujawar@gmail.com" },
  { first_name: "Ghazala", last_name: "Mulla", qualification: "B.U.M. M.Phil (ayu)", registration_number: "I-25622", hospital_or_clinic_name: "ZVM Unani Medical College", area: "Azam Campus, Camp", phone: "", email: "ghazalamulla@gmail.com" },
  { first_name: "Javed Sayyed", last_name: "Chand", qualification: "M.D.S (Periodontist and Implantologist)", registration_number: "A-10426", hospital_or_clinic_name: "New Pune Dental Clinic and Polyclinic", area: "Ghorpade Peth", phone: "8793051999", email: "drjavedsayyed@gmail.com" },

  # Page 9
  { first_name: "Amjad S.", last_name: "Khan", qualification: "BUMS", registration_number: "I-52346", hospital_or_clinic_name: "Aamina Clinic", area: "Kondhwa Khurd", phone: "9923932772", email: "drka786@gmail.com" },
  { first_name: "Mushtaque", last_name: "Mukadam", qualification: "MD (U) Med", registration_number: "I-25881", hospital_or_clinic_name: "Critical Healthcare ICU, Tarachand Hospital", area: "Rastapeth", phone: "9922404536", email: "dr.mumukadam@gmail.com" },
  { first_name: "Mirza Ali", last_name: "Baig", qualification: "BUMS, MD", registration_number: "67025", hospital_or_clinic_name: "Mirza Clinic", area: "Mitha Nagar, Kondhwa Khurd", phone: "9923028924", email: "mirza009@ymail.com" },
  { first_name: "Ashfaque Ullah", last_name: "Khan", qualification: "B.U.M.S. CCH", registration_number: "I-66238", hospital_or_clinic_name: "Khan Clinic", area: "Ashraf Nagar, Kondhwa Bk", phone: "9921355118", email: "" },
  { first_name: "Mustakahman Gulab", last_name: "Tamboli", qualification: "B.U.M.S.CCH CGO", registration_number: "I-33529A-1", hospital_or_clinic_name: "Tamboli Ayurvedic Clinic", area: "New Sangvi", phone: "9822196511", email: "drmushtaqtamboli@gmail.com" },
  { first_name: "Mastaan Akbar", last_name: "Shaikh", qualification: "BUMS (M.D)", registration_number: "I-34805", hospital_or_clinic_name: "Al Hayat Unani Clinic", area: "Dastur Meher Road, Camp", phone: "8888333133", email: "drmastaan@gmail.com" },
  { first_name: "Haroon", last_name: "Ansari", qualification: "BAMS MD PGDEMS CCH", registration_number: "I-30178", hospital_or_clinic_name: "Sahara Clinic / Prime Hospital", area: "Kondhwa", phone: "9422358230", email: "" },
  { first_name: "Musharraf Husain", last_name: "Ansari", qualification: "BAMS MD", registration_number: "I-77522-A-1", hospital_or_clinic_name: "MK Clinic", area: "Santosh Nagar, Katraj", phone: "", email: "ansarimush@gmail.com" },

  # Page 10
  { first_name: "Obaidullah Naseem", last_name: "Khan", qualification: "BUMS (Speciality Family Physician)", registration_number: "I-71645-D", hospital_or_clinic_name: "Galaxy Poly Clinic", area: "Ashraf Nagar, Kondhwa", phone: "7620387991", email: "drobaidullah69@gmail.com" },
  { first_name: "Zainab Adnan", last_name: "Lokhandwala", qualification: "M.B.B.S, D.P.M", registration_number: "2006020876", hospital_or_clinic_name: "Zehen Mind Clinic", area: "NIBM Road", phone: "8888752452", email: "" },
  { first_name: "Shabina", last_name: "Kausar", qualification: "BUMS CGO CCH CSD", registration_number: "I-80844-D", hospital_or_clinic_name: "Saleem Health Care Clinic", area: "Kondhwa", phone: "9511767469", email: "" },
  { first_name: "Afreen", last_name: "Patel", qualification: "B.U.M.S. CCH CGO", registration_number: "I-63103-D", hospital_or_clinic_name: "Health Care Clinic", area: "Kondhwa Khurd", phone: "7038387100", email: "" },
  { first_name: "Junaid E.", last_name: "Tamboli", qualification: "BDS", registration_number: "A32071", hospital_or_clinic_name: "Dental Care Clinic", area: "Ganj Peth", phone: "9766058058", email: "tambolijunaid@yahoo.com" },
  { first_name: "Saba S.", last_name: "Iqbal", qualification: "BUMS CCH CGO CSD", registration_number: "2001/12/3461", hospital_or_clinic_name: "Gultekdi Nursing Home", area: "Gultekdi", phone: "9657142020", email: "Drsabas@gmail.com" },
  { first_name: "Shams A.", last_name: "Iqbal", qualification: "MBBS, MS, DNB (Urology)", registration_number: "079127", hospital_or_clinic_name: "Gultekdi Nursing Home", area: "Gultekdi", phone: "9422307200", email: "drshami@hotmail.com" },

  # Page 11
  { first_name: "Sadiya", last_name: "Khan", qualification: "BUMS CCH CGO", registration_number: "I-67232", hospital_or_clinic_name: "", area: "Kondhwa", phone: "9503329791", email: "drsadiyakhan@gmail.com" },
  { first_name: "Shaikh Mohd.", last_name: "Wajid", qualification: "B.U.M.S. (Mumbai), MD (Pune)", registration_number: "I-35428", hospital_or_clinic_name: "ZVM Unani Medical College", area: "Azam Campus", phone: "9822964971", email: "drmohdwajid@gmail.com" },
  { first_name: "Fahim", last_name: "Takmili", qualification: "B.U.M.S. MD (Preventive Medicine)", registration_number: "I-70843-D", hospital_or_clinic_name: "Takmili Dawakhana", area: "Mominpura Ghorpadi", phone: "9028400408", email: "Fahim78631@rediffmail.com" },
  { first_name: "Jalees", last_name: "Ahmad", qualification: "BUMS, MD (Preventive Medicine)", registration_number: "I-68759-D", hospital_or_clinic_name: "Ahmad Clinic", area: "Indira Nagar, Gultekdi", phone: "8888892881", email: "drjaleesa@gmail.com" },
  { first_name: "Joheb Shabbir", last_name: "Shaikh", qualification: "BUMS, PGDEMS", registration_number: "I-61869-A", hospital_or_clinic_name: "Inamdar Multispeciality Clinic", area: "Kalwad, Lohegaon Road", phone: "9822196511", email: "drzohebshaikh9@gmail.com" },
  { first_name: "Shaique Ullah Hashmat", last_name: "Khan", qualification: "BUMS PGDEMS", registration_number: "I-51312", hospital_or_clinic_name: "Sana Clinic", area: "Ganj Peth", phone: "9423146886", email: "shaiquek134@gmail.com" },
  { first_name: "Muzammil Kabir", last_name: "Syed", qualification: "BAMS, PGFCP, PGDK", registration_number: "52672", hospital_or_clinic_name: "Anas Clinic", area: "Shivneri Nagar, Kondhwa", phone: "9326776797", email: "mksyed84@gmail.com" },
  { first_name: "Minhaj Ul", last_name: "Hasan", qualification: "BHMS", registration_number: "I-54211", hospital_or_clinic_name: "Lifeline Clinic", area: "Shivaji Nagar", phone: "9764343812", email: "drminhajulhasan@gmail.com" },

  # Page 12
  { first_name: "Tabish S.", last_name: "Adhikari", qualification: "BHMS", registration_number: "44363", hospital_or_clinic_name: "Shifa Clinic / Prime Hospital", area: "Upper Bebwewadi", phone: "", email: "" },
  { first_name: "Aifa T.", last_name: "Adhikari", qualification: "B.U.M.S. PGDEMS CCH CGO", registration_number: "I-54432", hospital_or_clinic_name: "Shifa Clinic", area: "Upper Bebwewadi", phone: "8668902872", email: "drtabish2803@gmail.com" },
  { first_name: "M. Iliyas L.", last_name: "Hannure", qualification: "B.U.M.S. PGDEMS", registration_number: "I-33609-A-1", hospital_or_clinic_name: "Iram Clinic", area: "Laxmi Nagar, Yerwada", phone: "9960282730", email: "hannure.iliyas@gmail.com" },
  { first_name: "Suhel", last_name: "Tamboli", qualification: "BHMS, PGDEMS", registration_number: "49749", hospital_or_clinic_name: "Tamboli Clinic", area: "Shivneri Nagar, Kondhwa", phone: "9970819226", email: "suhel78@gmail.com" },
  { first_name: "Akil Yusuf", last_name: "Momin", qualification: "BHMS", registration_number: "38523", hospital_or_clinic_name: "Mohammadiya Clinic", area: "Shivnerinagar, Kondhwa Khurd", phone: "9766181124", email: "dr.akil786@gmail.com" },
  { first_name: "Ayaz Husain", last_name: "Kharadi", qualification: "MD (Ayurved)", registration_number: "I-47686-A", hospital_or_clinic_name: "Ayukare Clinic", area: "Bhagyodaya Nagar, Kondhwa", phone: "9028775400", email: "dr.ahk.pune@gmail.com" },
  { first_name: "Muzammil", last_name: "Shaikh", qualification: "B.A.M.S., P.G.D.E.M.S", registration_number: "I-44944", hospital_or_clinic_name: "Faiz Clinic / National Hospital / Prime Hospital", area: "Hadapsar", phone: "9921092157", email: "drmuzammilshaikh@gmail.com" },
  { first_name: "Mohammad S.", last_name: "Mulani", qualification: "BHMS CGO CCH", registration_number: "32404", hospital_or_clinic_name: "Anshera Clinic", area: "Khadki Bazaar", phone: "9763900373", email: "dr.mohammedmulani@gmail.com" },

  # Page 13
  { first_name: "Anjum A.", last_name: "Shaikh (Attar)", qualification: "BHMS", registration_number: "32639", hospital_or_clinic_name: "", area: "Ghorpadi Peth", phone: "9370370122", email: "dranjum_27@yahoo.com" },
  { first_name: "Altaf", last_name: "Mukadam", qualification: "B.U.M.S MD (AM)", registration_number: "I-39902", hospital_or_clinic_name: "Noor Clinic", area: "Mitha Nagar, Kondhwa Khurd", phone: "9890507001", email: "altahasan0636@gmail.com" },
  { first_name: "Razia Altaf", last_name: "Mukadam", qualification: "B.U.M.S.", registration_number: "I-48490", hospital_or_clinic_name: "Noor Clinic", area: "Mitha Nagar, Kondhwa Khurd", phone: "9420166819", email: "" },
  { first_name: "Heena", last_name: "Shaikh (Inamdar)", qualification: "BUMS", registration_number: "I-81978-D", hospital_or_clinic_name: "Inamdar Multispeciality Clinic", area: "Kalwad", phone: "7758863110", email: "heena.inamdar21@gmail.com" },
  { first_name: "Wasim Adil", last_name: "Khan", qualification: "BUMS", registration_number: "I-75795-D", hospital_or_clinic_name: "National Hospital", area: "Hadapsar", phone: "9823292494", email: "wasimadilkhan@gmail.com" },
  { first_name: "Mosim Gafur", last_name: "Momin", qualification: "BAMS MD (Paediatrics)", registration_number: "I-62832-A", hospital_or_clinic_name: "Family Care Hospital", area: "Chikali, Haveli", phone: "7350751503", email: "dr.mosim2010@gmail.com" },
  { first_name: "Mohammed Saad", last_name: "Shaikh", qualification: "BUMS, PGDEMS", registration_number: "A-18083", hospital_or_clinic_name: "Asnan Dental & Health Care", area: "Kondhwa", phone: "9822215516", email: "saadshaikh86@gmail.com" },
  { first_name: "Iliyas Mansur", last_name: "Momin", qualification: "BDS MDS Orthodontics (Manipal)", registration_number: "I-27362A1", hospital_or_clinic_name: "Momin Clinic", area: "Hadapsar", phone: "9822459549", email: "momin.iliyas@ymail.com" },

  # Page 14
  { first_name: "Sameer", last_name: "Khan", qualification: "BUMS MD (PSM)", registration_number: "I-66571-D", hospital_or_clinic_name: "Shifa Clinic", area: "Chikhali", phone: "7507064574", email: "Sameer.shazeb@gmail.com" },
  { first_name: "Javid Ali", last_name: "Shaikh", qualification: "BHMS MD (Homeopathy)", registration_number: "38890", hospital_or_clinic_name: "Care Homeopathic Clinic", area: "Camp", phone: "", email: "" },
  { first_name: "Sadaf", last_name: "Khan (Mrs. Shaikh)", qualification: "BHMS", registration_number: "I-45051", hospital_or_clinic_name: "Rahel Hospital", area: "Camp", phone: "7709981876", email: "zozoayg@gmail.com" },
  { first_name: "Mubina", last_name: "Yelukar", qualification: "BUMS CCH CHO", registration_number: "I-40464", hospital_or_clinic_name: "Humera Clinic", area: "Ghorpade Peth", phone: "9850883976", email: "yelukarhussain@gmail.com" },
  { first_name: "Hussain", last_name: "Yelukar", qualification: "B.U.M.S CGO CCH PGDEMS", registration_number: "I-39875", hospital_or_clinic_name: "Madeeha Clinic", area: "Ganj Peth", phone: "9822271351", email: "yelukarhussain@yahoo.com" },
  { first_name: "Sameera", last_name: "Khan", qualification: "BUMS", registration_number: "I-47060", hospital_or_clinic_name: "Noble Clinic", area: "Kondhwa", phone: "8087598723", email: "" },
  { first_name: "Tamboli Yunus", last_name: "Peermohammad", qualification: "B.U.M.S CGO CCH PGDEMS", registration_number: "I-14348-A-1", hospital_or_clinic_name: "Shifa Polyclinic", area: "Viman Nagar", phone: "9371201152", email: "dr.yunustamboli@gmail.com" },
  { first_name: "Afzaal", last_name: "Shaikh", qualification: "BAMS", registration_number: "I-42900", hospital_or_clinic_name: "Shaikh Clinic", area: "Mitha Nagar, Kondhwa", phone: "9822752914", email: "itsafzaal@gmail.com" },

  # Page 15
  { first_name: "Wajeda Shaique Ullah", last_name: "Khan", qualification: "B.U.M.S (Pune)", registration_number: "l-68550-D", hospital_or_clinic_name: "Ayesha Clinic", area: "Kondwa Khurd", phone: "8421424452", email: "drwajeda21k@gmail.com" },
  { first_name: "Bilal", last_name: "Matwal", qualification: "B.U.M.S", registration_number: "33074", hospital_or_clinic_name: "Dr Bilal Clinic", area: "Santosh Nagar, Katraj", phone: "9890110996", email: "drbilalmatwal@ymail.com" },
  { first_name: "Anjum Shahebaaz", last_name: "Tamboli", qualification: "BHMS, PGDHM, PGDMLS, MBA", registration_number: "I-73412-A", hospital_or_clinic_name: "Shifa Clinic", area: "Sanjay Park", phone: "9730873440", email: "drshahebaaz@gmail.com" },
  { first_name: "Aneequa", last_name: "Shaikh", qualification: "B.U.M.S", registration_number: "I-40497", hospital_or_clinic_name: "Shaikh Clinic", area: "Mitha Nagar, Kondhwa", phone: "9270130274", email: "itsaneequa@gmail.com" },
  { first_name: "Kazim Kabir", last_name: "Syed", qualification: "B.U.M.S (Nashik)", registration_number: "I-70844-D", hospital_or_clinic_name: "Kabir Clinic & Children's Health Care", area: "Kondhwa", phone: "9326386899", email: "kksyed87@gmail.com" },
  { first_name: "Anwar", last_name: "Shaikh", qualification: "B.U.M.S (PGDEMS)", registration_number: "I-48945", hospital_or_clinic_name: "Shifa Clinic", area: "Yewalewadi, Kondhwa", phone: "9970462185", email: "dranwar258@gmail.com" },
  { first_name: "Mazhar H.", last_name: "Hashmi", qualification: "B.H.M.S.", registration_number: "38108", hospital_or_clinic_name: "Hashmi Clinic", area: "Bhawani Peth", phone: "9822890723", email: "drmazharhashmi@gmail.com" },
  { first_name: "Mukhtar Ahmed", last_name: "Ansari", qualification: "B.U.M.S", registration_number: "l-40463", hospital_or_clinic_name: "Siddiqua Hospital & Nursing Home", area: "Meetha Nagar, Kondhwa", phone: "9765603718", email: "mukhtaransar01@gmail.com" },

  # Page 16
  { first_name: "Fatima", last_name: "Khan", qualification: "B.U.M.S.", registration_number: "I-56339-D", hospital_or_clinic_name: "Noble Clinic", area: "Kondhwa", phone: "8087598726", email: "" },
  { first_name: "Mohsina", last_name: "Shaikh", qualification: "B.U.M.S.", registration_number: "I-56339-D", hospital_or_clinic_name: "Noble Clinic", area: "Mominpura", phone: "8983147087", email: "" },
  { first_name: "Aisha Khalid", last_name: "Sayyed", qualification: "B.A.M.S.", registration_number: "", hospital_or_clinic_name: "Alshifa Clinic", area: "Khadki", phone: "9604552248", email: "" },
  { first_name: "Zareen", last_name: "Khan", qualification: "B.H.M.S, CCH, CGO", registration_number: "38922", hospital_or_clinic_name: "Al Shifa Clinic", area: "Shivneri Nagar, Kondhwa Khurd", phone: "9822836468", email: "zareenkhan77809@gmail.com" },
  { first_name: "Ghazala", last_name: "Ansari", qualification: "B.U.M.S, PGDEMS, CCH, CGO", registration_number: "I-50276", hospital_or_clinic_name: "Siddiqa Hospital & Nursing Home", area: "Kondhwa", phone: "9823732381", email: "gazala949@gmail.com" },
  { first_name: "Khalil", last_name: "Jamadar", qualification: "MBBS, DMRD, DNB (Radio)", registration_number: "2013/04/0863", hospital_or_clinic_name: "Dnyati Diagnostic Centre", area: "Akurdi", phone: "7722045645", email: "khalilsigma13@gmail.com" },
  { first_name: "Usama", last_name: "Sayyad", qualification: "B.U.M.S, MD", registration_number: "I-63332-A", hospital_or_clinic_name: "Petals Hospital", area: "Yerwada", phone: "9970367442", email: "drsayyad@gmail.com" },
  { first_name: "Mateen", last_name: "Sayyed", qualification: "MBBS, MS (ENT)", registration_number: "2005/09/3494", hospital_or_clinic_name: "New Pune Dental & Polyclinic", area: "Ghorpade Peth", phone: "9860908796", email: "msmateensayyed@gmail.com" },

  # Page 17
  { first_name: "Nasir", last_name: "Khan", qualification: "B.U.M.S.", registration_number: "I-31493", hospital_or_clinic_name: "Umar Clinic", area: "Kondhwa Khurd", phone: "9822882223", email: "dr.nasir1974@gmail.com" },
  { first_name: "Mohsin", last_name: "Shaikh", qualification: "B.U.M.S.", registration_number: "47629", hospital_or_clinic_name: "Kamaal Clinic", area: "Meetha Nagar, Kondhwa", phone: "9623024040", email: "mohasin1524@gmail.com" },
  { first_name: "Saba", last_name: "Shaikh", qualification: "BHMS, ACLS", registration_number: "42195", hospital_or_clinic_name: "", area: "Ganj Peth", phone: "9860716619", email: "dr.sabaishaikh@gmail.com" },
  { first_name: "Saara Sameer", last_name: "Pathan", qualification: "B.U.M.S. (Gold Medalist)", registration_number: "I-68827-D", hospital_or_clinic_name: "Healing And Health Clinic", area: "NIBM, Kondhwa", phone: "", email: "drsayyad@gmail.com" },
  { first_name: "Mohammad", last_name: "Shaikh", qualification: "BHMS (Pune)", registration_number: "28584", hospital_or_clinic_name: "Shifa Clinic / Care Hospital", area: "Kondhwa", phone: "9850641513", email: "" },
  { first_name: "Durreshahwar", last_name: "Khan", qualification: "B.U.M.S.", registration_number: "I-41773", hospital_or_clinic_name: "Shaad Clinic", area: "Kondhwa Khurd", phone: "9970320994", email: "dr.sabaishaikh@gmail.com" },
  { first_name: "Zahir", last_name: "Ansari", qualification: "B.H.M.S. (Pune)", registration_number: "I-51139", hospital_or_clinic_name: "Zarrin Ansari Clinic", area: "Nana Peth", phone: "9765634316", email: "Zarrin148@gmail.com" },

  # Page 18
  { first_name: "Arshad", last_name: "Pathan", qualification: "B.U.M.S. (Asst. Professor Anatomy Dept.)", registration_number: "27002", hospital_or_clinic_name: "Pune Herbal Health Clinic", area: "Kondhwa", phone: "9822058594", email: "drarshadpathan@yahoo.co" },
  { first_name: "Khurshid", last_name: "Ahmed", qualification: "B.U.M.S.", registration_number: "I-17151", hospital_or_clinic_name: "ZVM Unani Medical College", area: "Camp", phone: "9834177137", email: "" },
  { first_name: "Jameela", last_name: "Khurshid", qualification: "BUMS", registration_number: "20648", hospital_or_clinic_name: "Kausar Clinic", area: "Kondhwa Khurd", phone: "9284966881", email: "" },
  { first_name: "Abdul Sattar", last_name: "Kagdi", qualification: "B.U.M.S.", registration_number: "I-28349", hospital_or_clinic_name: "The Herbals", area: "Kondhwa Khurd", phone: "8588884562", email: "" },
  { first_name: "Darakshan", last_name: "Ansari", qualification: "B.U.M.S.", registration_number: "29106", hospital_or_clinic_name: "", area: "Gultekdi", phone: "7588278001", email: "jams@rediffmail.com" },
  { first_name: "Mazhar Aasif Rais", last_name: "Khan", qualification: "B.H.M.S. (Pune)", registration_number: "32621", hospital_or_clinic_name: "Shifa Multispeciality Clinic", area: "Bhawani Peth", phone: "9923123423", email: "asiik2518@gmail.com" },
  { first_name: "Mohammed Abdul", last_name: "Mutallib", qualification: "B.U.M.S, MD EMS", registration_number: "I-81399-D", hospital_or_clinic_name: "Family Health Clinic", area: "Kondhwa Bk", phone: "8788837320", email: "muttalibsufyan@gmail.com" },

  # Page 19
  { first_name: "Sumaiya", last_name: "Khan", qualification: "B.U.M.S, CCH, CGO, CSD, MD", registration_number: "I-81966-D", hospital_or_clinic_name: "Family Clinic", area: "Shivneri Nagar, Kondhwa", phone: "7756871074", email: "sumaiyakhan1942@gmail.com" },
  { first_name: "Faiz Ahmed", last_name: "Maniyar", qualification: "B.A.M.S, M.D. (Ayurved)", registration_number: "I-66501-A", hospital_or_clinic_name: "Ahmed's Ayurved Clinic", area: "Kondhwa", phone: "9890177507", email: "faizmaniyar@gmail.com" },
  { first_name: "Nasim", last_name: "Kagdi", qualification: "B.U.M.S.", registration_number: "I-29106", hospital_or_clinic_name: "Al Raheman Clinic", area: "Kausar Baugh, Kondhwa", phone: "8766573934", email: "" },
  { first_name: "Rizwana M.", last_name: "Tamboli", qualification: "B.H.M.S.", registration_number: "32361", hospital_or_clinic_name: "Sheefa Clinic", area: "Dapodi", phone: "9763256784", email: "" },
  { first_name: "Shaheen Riyaz", last_name: "Khan", qualification: "B.H.M.S., CGO, CCH", registration_number: "29449", hospital_or_clinic_name: "", area: "Bhawani Peth", phone: "", email: "" },
  { first_name: "Sadiya Javed", last_name: "Sayyed", qualification: "B.U.M.S. (MUHS) MHCM, EMS", registration_number: "I-831663-D", hospital_or_clinic_name: "Kondhwa Clinic", area: "Kondhwa", phone: "7744800997", email: "drsadiyasayyad@gmail.com" },
  { first_name: "Nasim", last_name: "Shaikh", qualification: "B.A.M.S (Pune)", registration_number: "I-15093-A1", hospital_or_clinic_name: "Firdaus Clinic", area: "Kausar Baugh, Kondhwa", phone: "9890098813", email: "nasim.shaikhdoctor@gmail.com" },

  # Page 20
  { first_name: "Imran", last_name: "Shaikh", qualification: "MBBS, MS, DNB (Orthopaedics)", registration_number: "MMC-2012082487", hospital_or_clinic_name: "Inamdar Hospital / ZVM Hospital / National Hospital", area: "Pune", phone: "8797697288", email: "drshaikhimranortho@gmail.com" },
  { first_name: "Kaleemullah", last_name: "Khan", qualification: "B.U.M.S", registration_number: "I-40557", hospital_or_clinic_name: "Al-Safa Poly Clinic", area: "D Ward, Gaothan", phone: "9822328580", email: "khan.alsafaclinic@gmail.com" },
  { first_name: "Abdul Majid Zakir", last_name: "Attar", qualification: "B.U.M.S. PGDEMS CCH", registration_number: "49705", hospital_or_clinic_name: "Bhat Clinic", area: "Kondhwa Khurd", phone: "9130525058", email: "" },
  { first_name: "Wasim", last_name: "Kazi", qualification: "MBBS MD DNB NNF Fellowship in Neonatology", registration_number: "20120051174", hospital_or_clinic_name: "Sarwat Memorial Hospital / Neo Care (NICU)", area: "Kondhwa Khurd", phone: "8767878158", email: "wasim2488@gmail.com" },
  { first_name: "Namra", last_name: "Kazi (Shaikh)", qualification: "MBBS MS Obstetrics and Gynaecology", registration_number: "2013051281", hospital_or_clinic_name: "Sarwat Memorial Hospital", area: "Kondhwa Khurd", phone: "8767878158", email: "namra.sk@gmail.com" },
  { first_name: "Zakir N.", last_name: "Attar", qualification: "B.U.M.S. PGDEMS CCH", registration_number: "19542", hospital_or_clinic_name: "Health Plus Clinic", area: "Vishrantwadi", phone: "8793725121", email: "attarzakirn@gmail.com" },
  { first_name: "Salim K.", last_name: "Pathan", qualification: "MBBS DNB DO DOMS FCPS ICO", registration_number: "2000/02/0866", hospital_or_clinic_name: "Hi Tech Eye Surgery & Lazer Centre", area: "Kondhwa Road", phone: "9822286065", email: "salimp48@gmail.com" },
  { first_name: "Sadiya Abdullah", last_name: "Khan", qualification: "BUMS CCH CGO", registration_number: "l-67232-D", hospital_or_clinic_name: "", area: "Kondhwa", phone: "9503329791", email: "dr.sadiyakhan@gmail.com" },

  # Page 21
  { first_name: "Shoaib Nazim", last_name: "Shaikh", qualification: "MBBS, DNB Orthopedics", registration_number: "2011113340", hospital_or_clinic_name: "Sarwat Memorial Hospital", area: "Kondhwa Khurd", phone: "9987939447", email: "shoaibsk.7@gmail.com" },
  { first_name: "Aasia Shoaib", last_name: "Shaikh", qualification: "MBBS MS Obstetrics and Gynaecology", registration_number: "2013020176", hospital_or_clinic_name: "Shaikh Hospital", area: "Ganesh Peth", phone: "9930432871", email: "aasiakhan017@gmail.com" },
  { first_name: "Aaliya", last_name: "Inamdar", qualification: "MBBS", registration_number: "1072/02/2000", hospital_or_clinic_name: "Inamdar Clinic", area: "Kondhwa", phone: "9011490984", email: "aaliyainamdar@gmail.com" },
  { first_name: "Munaf", last_name: "Inamdar", qualification: "MBBS", registration_number: "081558", hospital_or_clinic_name: "Lifeline Hospital", area: "Kondhwa", phone: "9850001646", email: "munainamdar39@gmail.com" },
  { first_name: "Sufyan Ahmed", last_name: "Ghawte", qualification: "MD (Unani Medicine)", registration_number: "128098-D", hospital_or_clinic_name: "Herbs and Hakim", area: "MG Road, Camp", phone: "9890487878", email: "sufyan@gmail.com" },
  { first_name: "Rakhi", last_name: "Chaudhari", qualification: "MBBS DNB Gynecology", registration_number: "I-40010A-1", hospital_or_clinic_name: "Chaudhari Clinic", area: "Kondhwa Khurd", phone: "9421355535", email: "tanveerdoc777@gmail.com" },
  { first_name: "Shaikh Mohd.", last_name: "Sirajuddin", qualification: "B.U.M.S. MD. MED.", registration_number: "I-33856", hospital_or_clinic_name: "ZVM Unani Medical College / National Poly Clinic", area: "Bhawani Peth", phone: "9747212277", email: "drshaikhsirajuddin@gmail.com" },
  { first_name: "Tarannum Fayaz", last_name: "Shaikh", qualification: "MBBS. MD Medicine Consultant Physician and Diabetologist", registration_number: "36231", hospital_or_clinic_name: "Faiz Clinic", area: "Kondhwa Khurd", phone: "9284584962", email: "" },

  # Page 22
  { first_name: "Irfan", last_name: "Palla", qualification: "MBBS, DCH", registration_number: "2010030392", hospital_or_clinic_name: "Dr. Palla's Birth & Beyond Clinic", area: "Katraj", phone: "9028441740", email: "drirphanpalla@gmail.com" },
  { first_name: "Mudassir", last_name: "Sayyed", qualification: "B.H.M.S. PGDHAM PGDEMS", registration_number: "62903", hospital_or_clinic_name: "Sahara Clinic", area: "Wanowrie", phone: "7798888844", email: "dr.sayyed.mudassir@gmail.com" },
  { first_name: "Ayesha Fatema", last_name: "Sayyed", qualification: "M.D. UNANI", registration_number: "1-49626", hospital_or_clinic_name: "Kondhwa Herbal Centre", area: "Kondhwa", phone: "9224433295", email: "drsyedayeshafatema@gmail.com" },
  { first_name: "Fayaz", last_name: "Shaikh", qualification: "B.A.M.S", registration_number: "2010/04/0876", hospital_or_clinic_name: "", area: "Pune", phone: "9049092094", email: "rizwana_rizpathan@rediffmail.com" },
  { first_name: "Sarfaraz S.", last_name: "Pathan", qualification: "M.S. General & Laproscopic Surgeon", registration_number: "1638/03/2002", hospital_or_clinic_name: "Global Hospital & Research Centre", area: "New Sangavi", phone: "8007755655", email: "spathan.1978@gmail.com" },
  { first_name: "Rizwana Irfan", last_name: "Palla (Pathan)", qualification: "MBBS DA (Consultant - Anaesthesiologist)", registration_number: "2010/04/0876", hospital_or_clinic_name: "", area: "Pune", phone: "9049092094", email: "rizwana_rizpathan@rediffmail.com" },
  { first_name: "Wafa Manaal", last_name: "Kazi", qualification: "B.D.S", registration_number: "A-19903", hospital_or_clinic_name: "DentArtist", area: "Kondhwa Khurd", phone: "8983305997", email: "dwkazi@gmail.com" },
  { first_name: "Fouzia", last_name: "Khan", qualification: "BUMS", registration_number: "I-54216", hospital_or_clinic_name: "", area: "Mitha Nagar, Kondhwa", phone: "7875807078", email: "frk2124@yahoo.com" },

  # Page 23
  { first_name: "Mehjabeen Z.", last_name: "Shaikh", qualification: "BUMS", registration_number: "1-34799", hospital_or_clinic_name: "Healthcare Clinic", area: "NIBM, Kondhwa", phone: "8856858188", email: "" },
  { first_name: "Saba", last_name: "Tajmohammed", qualification: "BUMS CGO CCH", registration_number: "1-34902", hospital_or_clinic_name: "Fine Care Clinic", area: "Guruvar Peth, Momin Pura", phone: "7276285949", email: "" },
  { first_name: "Sohila", last_name: "Vatankha", qualification: "BUMS", registration_number: "1-31662", hospital_or_clinic_name: "Vatankha Clinic", area: "Sachapir Street, Camp", phone: "9422305482", email: "" },
  { first_name: "A.", last_name: "Salam", qualification: "M.B.B.S. MD Physician / PGD ECHO", registration_number: "MMC-2009/07/2756", hospital_or_clinic_name: "National Hospital", area: "Kondhwa Khurd", phone: "9730985098", email: "dr_abduss@yahoo.co.in" },
  { first_name: "Sadiq", last_name: "Khan", qualification: "MBBS", registration_number: "079639", hospital_or_clinic_name: "Serene Hospital", area: "Yerwada", phone: "9673961960", email: "drsaadiq@rediffmail.com" },
  { first_name: "Rehana", last_name: "Khan", qualification: "MBBS, DHM", registration_number: "079640", hospital_or_clinic_name: "Serene Hospital", area: "Yerwada", phone: "9960014652", email: "dr.rehanak@gmail.com" },
  { first_name: "Wasim Adil", last_name: "Khan", qualification: "B.U.M.S", registration_number: "I-75795-D", hospital_or_clinic_name: "National Hospital", area: "Hadapsar", phone: "9823292494", email: "Wasimadilkhan07@gmail.com" },
  { first_name: "S.Z.", last_name: "Anwar", qualification: "B.U.M.S.-PGEM-MDAM-CCH&CGO", registration_number: "40828", hospital_or_clinic_name: "", area: "Koregaon Park", phone: "9823077157", email: "szanwar@hotmail.com" },

  # Page 24
  { first_name: "Nasreen", last_name: "Pathan", qualification: "BUMS", registration_number: "23976", hospital_or_clinic_name: "Khan Polyclinic / Pune Herbal Clinic", area: "Shivaji Nagar / Kondhwa", phone: "9850646380", email: "drarshadpathan@yahoo.co" },
  { first_name: "Nabila M.", last_name: "Sayyed", qualification: "MBBS, Diploma in Diabetes", registration_number: "2011/09/2969", hospital_or_clinic_name: "Sana Hospital", area: "Kausar Baugh, Kondhwa", phone: "9673698507", email: "drnabilasayyed@gmail.com" },
  { first_name: "Atiya", last_name: "Shaikh", qualification: "M.B.B.S.-M.D. Pathology", registration_number: "75915", hospital_or_clinic_name: "Pearl Pathology Laboratory", area: "Wanowrie", phone: "8308825256", email: "pearlpathologylab@gmail.com" },
  { first_name: "Aamna", last_name: "Khan", qualification: "BPTH", registration_number: "2016/01/PT/004374", hospital_or_clinic_name: "", area: "Salunkhe Vihar", phone: "9665051450", email: "aamn_memon@hotmail.com" },
  { first_name: "Ahmad", last_name: "Mahfooz", qualification: "B.U.M.S, MD (Unani Medicine)", registration_number: "59894", hospital_or_clinic_name: "ZVM Unani Medical College", area: "Camp", phone: "9765483690", email: "amrzpune@rediffmail.com" },
  { first_name: "Nadeem", last_name: "Siddiqui", qualification: "B.U.M.S. Pune", registration_number: "I-34795", hospital_or_clinic_name: "Al Hayat Unani Herbal", area: "Camp", phone: "8983000049", email: "drnadeemunani@gmail.com" },
  { first_name: "Abdullah I.", last_name: "Deshmukh", qualification: "BUMS (Family Physician)", registration_number: "61023", hospital_or_clinic_name: "Deshmukh Clinic", area: "Market Yard", phone: "9766319368", email: "khanabdullah113@gmail.com" },

  # Page 25
  { first_name: "Siraj", last_name: "Basade", qualification: "M.B.B.S., M.S., DNB-Neurosurgery", registration_number: "2006/04/2263", hospital_or_clinic_name: "Noble Hospital / Ruby Hall / Vishwaraj / Inamdar / Jehangir Hospital", area: "Pune", phone: "997281299", email: "siraj582@yahoo.com" },
  { first_name: "Suhel", last_name: "Khan", qualification: "MBBS, MS (Ortho) DNB (Ortho), DIP (Ortho), Fellowship in Joint Replacement", registration_number: "2008/04/1595", hospital_or_clinic_name: "Sana Hospital", area: "Kausar Baugh, Kondhwa", phone: "7798793456", email: "sanahospital@yahoo.com" },
  { first_name: "Mubashir", last_name: "Shah", qualification: "M.B.B.S, DNB-Paediatrics, DNB-Neonatology", registration_number: "MMC-2018073818", hospital_or_clinic_name: "Motherhood Hospital", area: "Kharadi", phone: "", email: "" },
  { first_name: "Mursaleen", last_name: "Inamdar", qualification: "BUMS, PGDEMS", registration_number: "I-42617", hospital_or_clinic_name: "Allergy Clinic", area: "Camp", phone: "9970316987", email: "" },
  { first_name: "Asbah", last_name: "Shaikh", qualification: "B.D.S. Pune", registration_number: "A-19889", hospital_or_clinic_name: "New Pune Dental and Polyclinic", area: "Ghorpadi Peth", phone: "9921852227", email: "" },
  { first_name: "Sana", last_name: "Khan", qualification: "BPTh, MPTh (Musculoskeletal Sciences)", registration_number: "2013/07/PT/002906", hospital_or_clinic_name: "Sana Hospital", area: "Kausar Baugh, Kondhwa", phone: "7798793456", email: "physiomatic.pune@gmail.com" },

  # Page 26
  { first_name: "Junaid", last_name: "Sayyed", qualification: "MBBS, MD - Internal Medicine, DM - Clinical Hematology", registration_number: "MMC-2018073819", hospital_or_clinic_name: "Ruby Hall / Sahyadri / Columbia Asia / Noble / Shree / Inamdar", area: "Pune", phone: "", email: "" },
  { first_name: "Reshma", last_name: "Roshan", qualification: "MBBS, DGO", registration_number: "", hospital_or_clinic_name: "Care & Cure Hospital", area: "Pune", phone: "8600855104", email: "anjumw1@gmail.com" },
  { first_name: "Shaaz", last_name: "Khan", qualification: "M.B.B.S., D.M.R.E (Radiology)", registration_number: "2008/06/2464", hospital_or_clinic_name: "Reliable Diagnostics", area: "Kausar Baugh, Kondhwa", phone: "9860380900", email: "shaaz.khan17@gmail.com" },
  { first_name: "Javed", last_name: "Shaikh", qualification: "MBBS, DNB, MCh (Ortho)", registration_number: "2011/04/0926", hospital_or_clinic_name: "Care & Cure Hospital", area: "Rahatani", phone: "8308081314", email: "mjishaikh@gmail.com" },
  { first_name: "Fayyaz", last_name: "Qureshi", qualification: "DHMS", registration_number: "15230", hospital_or_clinic_name: "City Hospital & Diagnostic Centre", area: "Bhawani Peth", phone: "8148138926", email: "dr.fayyaz.qureshi1407@gmail.com" },
  { first_name: "A.H.", last_name: "Farooqui", qualification: "B.Sc. B.U.M.S. M.A. (M.D), Prof. & HOD Moalijat Dept.", registration_number: "I-32877", hospital_or_clinic_name: "ZVM Unani Medical College & Hospital", area: "Camp", phone: "9822234792", email: "akhtardrfarooqui@gmail.com" },
  { first_name: "Amjad", last_name: "Khan", qualification: "B.U.M.S.", registration_number: "I-52346", hospital_or_clinic_name: "Amina Clinic", area: "Kondhwa Khurd", phone: "", email: "" },
  { first_name: "Junayd", last_name: "Sayyed", qualification: "B.A.M.S., PGDEMS, ACLS", registration_number: "I-85143-A", hospital_or_clinic_name: "Life Care Clinic", area: "Kharadi", phone: "9890009977", email: "junayd.sayyed@gmail.com" },

  # Page 27
  { first_name: "Rubina S.", last_name: "Sayed", qualification: "BUMS CGO CCH PGDEMS", registration_number: "I38935", hospital_or_clinic_name: "", area: "Pune", phone: "", email: "" },
  { first_name: "Ahsen Shehbaaz", last_name: "Daruwala", qualification: "MBBS", registration_number: "", hospital_or_clinic_name: "", area: "Pune", phone: "9527627860", email: "ahsendaruwala@gmail.com" },
  { first_name: "Anjum Furkan", last_name: "Inamdar", qualification: "BHMS", registration_number: "", hospital_or_clinic_name: "Inamdar Clinic", area: "Bhawani Peth", phone: "9890736742", email: "" },
  { first_name: "K.S.", last_name: "Momin", qualification: "BHMS.PGDMS", registration_number: "53729", hospital_or_clinic_name: "", area: "Raviwar Peth", phone: "9890821728", email: "sam98km@gmail.com" },
  { first_name: "Abdul Ahad", last_name: "Munshi", qualification: "MBBS, DFM (RCGP,UK), MD, DDV (Skin & VD)", registration_number: "2007/11/3841", hospital_or_clinic_name: "Ruby Hall / Inamdar / VPMH / Sahyadri / Sana / Satyanand / Sarwat Hospital", area: "Pune", phone: "7709973364", email: "ahadmunshi@yahoo.com" },
  { first_name: "Yunus", last_name: "Inamdar", qualification: "BAMS, MD", registration_number: "I-16017", hospital_or_clinic_name: "Inamdar Clinic", area: "Bhawani Peth", phone: "9881177885", email: "" },
  { first_name: "Naaz Yunus", last_name: "Inamdar", qualification: "BAMS", registration_number: "I-23462", hospital_or_clinic_name: "Inamdar Clinic", area: "Bhawani Peth", phone: "9881270703", email: "" },
  { first_name: "Sayyad", last_name: "Hamid", qualification: "B.H.M.S.", registration_number: "311520", hospital_or_clinic_name: "Shifa Clinic", area: "Kalwad, Lohegaon Road", phone: "9881372466", email: "hamid76m@gmail.com" },

  # Page 28
  { first_name: "Heeba Yunus", last_name: "Inamdar", qualification: "BAMS", registration_number: "I-85242A", hospital_or_clinic_name: "Inamdar Clinic", area: "Bhawani Peth", phone: "8446480009", email: "" },
  { first_name: "Asir Amin", last_name: "Tamboli", qualification: "MBBS DA, DNB. (FNB critical care medicine)", registration_number: "I38935", hospital_or_clinic_name: "KEM Hospital", area: "Pune", phone: "9637330554", email: "drasirtamboli@gmail.com" },
  { first_name: "Sabiha", last_name: "Sayed", qualification: "MBBS DCH", registration_number: "", hospital_or_clinic_name: "", area: "Kondhwa Khurd", phone: "9823292823", email: "dr.sabihasayed@gmail.com" },
  { first_name: "Afroz", last_name: "Shaikh", qualification: "BHMS", registration_number: "", hospital_or_clinic_name: "Swargate GP", area: "Swargate", phone: "8007811664", email: "afrozshaikhat@gmail.com" },
  { first_name: "Fazal Ahmed", last_name: "Khan", qualification: "BUMS (Specialist in Spine and Pain Management)", registration_number: "I-55577-D", hospital_or_clinic_name: "Fazal Clinic", area: "Nana Peth", phone: "9028630782", email: "drfazalahmedk@gmail.com" },
  { first_name: "Salma", last_name: "Chougle", qualification: "B.U.M.S", registration_number: "I-63416-D", hospital_or_clinic_name: "Shifa Clinic", area: "Mithanagar, Kondhwa", phone: "", email: "dr.salmachougle2020@gmail.com" },
  { first_name: "Momin Khaled", last_name: "Iqbal", qualification: "MBBS DA IDCCM", registration_number: "", hospital_or_clinic_name: "Sahyadri Hospital (Cardiac Unit)", area: "Pune", phone: "7020262931", email: "drkhalediqbal@gmail.com" },
  { first_name: "Mukhtar Ahmad", last_name: "Deshmukh", qualification: "BAMS (Pune)", registration_number: "AI-22995", hospital_or_clinic_name: "Batul Clinic", area: "New Mangalwar Peth", phone: "9423012625", email: "drmukhtardeshmukh@gmail.com" },

  # Page 29
  { first_name: "Rahematullah A.", last_name: "Pathan", qualification: "BUMS, MS (Gen.Surgery) FMIS (AIIMS)", registration_number: "I-79628-A-1", hospital_or_clinic_name: "", area: "Salunke Vihar Road", phone: "8007715666", email: "drshifa87@gmail.com" },
  { first_name: "Arif", last_name: "Memon", qualification: "MBBS Pune", registration_number: "29709", hospital_or_clinic_name: "", area: "Gultekdi", phone: "9822253910", email: "dr.arif.a.memon@gmail.com" },
  { first_name: "Mohd. Irfan", last_name: "Ansari", qualification: "BHMS", registration_number: "", hospital_or_clinic_name: "Ansari Clinic", area: "Pune", phone: "8087774454", email: "ansariclinic2311@gmail.com" },
  { first_name: "Rizwan Yusuf", last_name: "Khan", qualification: "BUMS, MS (General Surgery), F.M.A.S, Fellowship in Proctology", registration_number: "2010/05/63623", hospital_or_clinic_name: "Healing Hands Clinic", area: "BS Dhole Patil Road", phone: "9923443665", email: "dr.rizwank86@gmail.com" },
  { first_name: "Alquama Kauser M.", last_name: "Mulani", qualification: "BHMS; CGO CCH", registration_number: "32554", hospital_or_clinic_name: "Mohammed Saaim Clinic", area: "Bopodi", phone: "9763900373", email: "" },
  { first_name: "Arbina S.", last_name: "Mujawar", qualification: "BAMS MD (Ayu.)", registration_number: "I-53437-A", hospital_or_clinic_name: "Health Plus Clinic", area: "Dhanori", phone: "", email: "" },
  { first_name: "Nilofer Sohail", last_name: "Bagwan", qualification: "BAMS", registration_number: "I-64946-E", hospital_or_clinic_name: "Anandpuram Charitable Diagnostic Centre", area: "Pune", phone: "8087220014", email: "" },

  # Page 30
  { first_name: "Mohammed Arshad", last_name: "Khan", qualification: "BAMS, PGDEMS", registration_number: "", hospital_or_clinic_name: "Dr. Khan's Skin Clinic", area: "Pune", phone: "8087031949", email: "khanskinclinic@gmail.com" },
  { first_name: "Asiya A.", last_name: "Sayyed", qualification: "BUMS (Gold Medalist)", registration_number: "I-83046-A", hospital_or_clinic_name: "", area: "Salunke Vihar Rd", phone: "9028485709", email: "asiya_17590@yahoo.co.in" },
  { first_name: "Sabir S.", last_name: "Mujawar", qualification: "BAMS, MD (Ayu.)", registration_number: "", hospital_or_clinic_name: "", area: "Pune", phone: "", email: "" },
  { first_name: "Sayyed Shifaruhi", last_name: "(W/O Dr Ebrahim Patel)", qualification: "MBBS DNB (Anaesthesia)", registration_number: "52149", hospital_or_clinic_name: "Ruby Hall Clinic", area: "Wanorie", phone: "7758005382", email: "drshifasayyed@gmail.com" },
  { first_name: "Almas", last_name: "Zubair", qualification: "BDS, MDS (Orthodontics)", registration_number: "A-26454", hospital_or_clinic_name: "Life On Clinic", area: "Kausar Bagh, Kondhwa", phone: "9158176777", email: "almas0280@gmail.com" },
  { first_name: "Iftekhar", last_name: "Khan", qualification: "MBBS, DCHMMC", registration_number: "065494", hospital_or_clinic_name: "Lifeline Hospital", area: "Kausar Baugh, Kondhwa", phone: "9422016786", email: "dr_ikhan@yahoo.com" },
  { first_name: "Tahir", last_name: "Shaikh", qualification: "BHMS (Pune) Consultant Homeopath, Family Physician & Surgeon", registration_number: "", hospital_or_clinic_name: "Saeeda Clinic", area: "Yerwada", phone: "9028317100", email: "dryskhan@gmail.com" },

  # Page 31
  { first_name: "Sayyed Sajid", last_name: "Hameed", qualification: "BHMS PGC(CARD)", registration_number: "", hospital_or_clinic_name: "", area: "Pune", phone: "", email: "" },
  { first_name: "Javed Ali", last_name: "Khan", qualification: "BUMS, MD (PSM), PGDEMS", registration_number: "l-74906-D", hospital_or_clinic_name: "", area: "Kondhwa BK", phone: "9762592092", email: "javedalikhan769@gmail.com" },
  { first_name: "Syed Waliwajed", last_name: "Zubair", qualification: "MBBS DTCD (Chest), Dip. Cardiology", registration_number: "2010/01/0045", hospital_or_clinic_name: "Life On Clinic", area: "Kausar Bagh, Kondhwa", phone: "9158271777", email: "zubair_141s@yahoo.com" },
  { first_name: "Shaheen Jabbar", last_name: "Shaikh", qualification: "BUMS.CGO.CCH", registration_number: "", hospital_or_clinic_name: "Jeevan Poly Clinic", area: "Bopkhel", phone: "9021790795", email: "jabbarshkh@gmail.com" },
  { first_name: "Tasnim", last_name: "Ansari", qualification: "BUMS", registration_number: "", hospital_or_clinic_name: "", area: "Pune", phone: "", email: "" },

  # Page 32-43 (members with name only - partial info)
  { first_name: "Nilofer", last_name: "Punjabi", qualification: "BUMS", registration_number: "", hospital_or_clinic_name: "Dr. N M Punjabi Clinic", area: "Kondhwa Khurd", phone: "8669020994", email: "niloferpunjabi1257@gmail.com" },
  { first_name: "Hasib", last_name: "Shaikh", qualification: "MBBS, MS, D. (Ortho)", registration_number: "67013", hospital_or_clinic_name: "Lifeline Multispeciality Hospital", area: "Kausar Baugh, Kondhwa", phone: "9822248870", email: "" },
  { first_name: "Aziz", last_name: "Mhaisale", qualification: "B.H.M.S", registration_number: "22912", hospital_or_clinic_name: "KIM Clinic", area: "Kondhwa Khurd", phone: "9834170631", email: "aziz.mhaisale@gmail.com" },
  { first_name: "Abrar", last_name: "Shaikh", qualification: "BHMS", registration_number: "", hospital_or_clinic_name: "Noor Hospital / Navjeevan Multispeciality Hospital", area: "Kopergaon", phone: "9860183737", email: "abrarraje.as@gmail.com" },
  { first_name: "Izhaar", last_name: "Khan", qualification: "BHMS CCH (Mumbai)", registration_number: "52149", hospital_or_clinic_name: "Life Line Clinic", area: "Yerawada", phone: "9325400111", email: "izharbkhan1111@gmail.com" },
  { first_name: "Danish", last_name: "Andrabi", qualification: "MBBS, MS ENT, Fellowship Endoscopic Skull Base", registration_number: "2009030751", hospital_or_clinic_name: "Ruby Hall", area: "Wanowrie", phone: "8698364949", email: "" },
  { first_name: "Jalil", last_name: "Ahmed", qualification: "BUMS, MD (Kulliyat), Asso. Professor ZVM Unani Medical College", registration_number: "", hospital_or_clinic_name: "Kondhwa Herbal Centre", area: "Kondhwa", phone: "8087482747", email: "drjaleelahmedsiddiqui@gmail.com" },
  { first_name: "Jabin", last_name: "Pathan", qualification: "BAMS", registration_number: "I-23350-A", hospital_or_clinic_name: "Sakhi Nursing Home", area: "Wakad", phone: "9421016928", email: "jabin.pathan2@gmail.com" },
  { first_name: "Musair J.", last_name: "Deshmukh", qualification: "BUMS (Master Diploma in Critical Care)", registration_number: "", hospital_or_clinic_name: "", area: "Burhani Colony", phone: "9422024281", email: "drmjdeshmukh@gmail.com" },
  { first_name: "Manzoor", last_name: "Ahmed", qualification: "M.S. (Surgery) Consultant Surgeon & Asst. Prof ZVM Unani Medical College", registration_number: "", hospital_or_clinic_name: "New Pune Hospital", area: "Kondhwa", phone: "9890389196", email: "manzoor.surgeon@gmail.com" },
  { first_name: "Mudassir", last_name: "Mulla", qualification: "BUMS PGDEMS", registration_number: "", hospital_or_clinic_name: "Shifa Clinic", area: "Gokhale Nagar", phone: "9096638449", email: "drmudassirmulla19@gmail.com" },
  { first_name: "Rai Ahmed", last_name: "Choudhary", qualification: "BUMS", registration_number: "25389", hospital_or_clinic_name: "", area: "Kondhwa", phone: "9225965503", email: "raiahmad5@rediffmail.com" },
  { first_name: "Seemab", last_name: "Shaikh", qualification: "MBBS; DLO ENT Surgeon & Sleep Specialist", registration_number: "65690", hospital_or_clinic_name: "", area: "Bhawani Peth", phone: "9822315544", email: "drseemabshaikh@gmail.com" },
  { first_name: "Jabbar", last_name: "Shaikh", qualification: "Physiotherapist", registration_number: "", hospital_or_clinic_name: "Jeevan Poly Clinic", area: "Bopkhel", phone: "9021790795", email: "jabbarshkh@gmail.com" },
  { first_name: "Elyas Raheem", last_name: "Shaikh", qualification: "B.D.S.", registration_number: "A-9268", hospital_or_clinic_name: "", area: "Kondhwa Budrukh", phone: "9823407713", email: "driliyasbds@gmail.com" }
]

puts "Starting import of #{members.count} UDA members..."
success = 0
skipped = 0

members.each do |m|
  # Skip if already exists by registration number or email
  existing = nil
  existing = Registration.find_by(registration_number: m[:registration_number]) if m[:registration_number].present?
  existing ||= Registration.find_by(email: m[:email]) if m[:email].present?

  if existing
    skipped += 1
    next
  end

  reg = Registration.new(
    first_name:             m[:first_name],
    last_name:              m[:last_name],
    qualification:          m[:qualification],
    registration_number:    m[:registration_number].presence || "PDF-IMPORT-#{SecureRandom.hex(4).upcase}",
    specialization:         "General Physician",
    hospital_or_clinic_name: m[:hospital_or_clinic_name],
    area:                   m[:area],
    phone:                  m[:phone].presence || "N/A",
    email:                  m[:email].presence || "#{m[:first_name].downcase.gsub(' ', '')}.#{m[:last_name].downcase.gsub(' ', '')}@udamember.org",
    status:                 "approved"
  )

  if reg.save
    success += 1
    print "."
  else
    puts "\nFailed: Dr. #{m[:first_name]} #{m[:last_name]} — #{reg.errors.full_messages.join(', ')}"
  end
end

puts "\n\n✅ Import complete!"
puts "   ✓ #{success} members imported"
puts "   ↷ #{skipped} skipped (already exist)"
puts "   Total in DB: #{Registration.count}"
