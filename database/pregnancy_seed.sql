USE health_advisory;

-- ==========================================
-- PREGNANCY & MATERNITY CATEGORY
-- ==========================================
INSERT INTO categories (name, description, icon) VALUES
('Pregnancy & Maternity', 'Week-by-week pregnancy guide: diet, scans, tests, supplements, and common issues', '🤰');

SET @preg_cat = LAST_INSERT_ID();

-- ==========================================
-- PREGNANCY CONDITIONS (WEEK-WISE)
-- ==========================================

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 1-4 (Implantation)', 'The fertilized egg implants in the uterus. Most women dont know they are pregnant yet. Crucial time for neural tube development. Baby size: poppy seed.', 'pregnancy,week 1,week 2,week 3,week 4,implantation,conception,first month,early pregnancy', '🌱', 'moderate');
SET @w1 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 5-8 (Embryo Formation)', 'Heart starts beating (week 6). Brain, spinal cord, and organs begin forming. Morning sickness peaks. Baby size: raspberry. First ultrasound usually done.', 'pregnancy,week 5,week 6,week 7,week 8,embryo,heartbeat,morning sickness,nausea,second month', '💓', 'moderate');
SET @w5 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 9-12 (First Trimester End)', 'All major organs formed. Risk of miscarriage drops significantly after week 12. NT scan and first trimester screening done. Baby size: lime.', 'pregnancy,week 9,week 10,week 11,week 12,first trimester,nt scan,screening,third month', '🍋', 'moderate');
SET @w9 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 13-16 (Second Trimester Begins)', 'Energy returns, nausea reduces. Baby starts moving (you may not feel it yet). Gender can sometimes be determined. Baby size: avocado.', 'pregnancy,week 13,week 14,week 15,week 16,second trimester,energy,gender,fourth month', '🥑', 'mild');
SET @w13 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 17-20 (Anatomy Scan)', 'You start feeling baby movements (quickening). Anomaly scan (level 2 ultrasound) done at week 18-20 to check all organs. Baby size: banana.', 'pregnancy,week 17,week 18,week 19,week 20,anatomy scan,anomaly,movements,kicks,fifth month', '🍌', 'mild');
SET @w17 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 21-24 (Viability Milestone)', 'Baby reaches viability (can survive outside womb with medical help after week 24). Rapid brain development. Glucose screening done. Baby size: corn.', 'pregnancy,week 21,week 22,week 23,week 24,viability,glucose test,brain development,sixth month', '🌽', 'moderate');
SET @w21 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 25-28 (Third Trimester Begins)', 'Baby opens eyes, responds to sound. Lungs developing rapidly. GD screening (glucose tolerance test) at week 24-28. Baby size: cauliflower.', 'pregnancy,week 25,week 26,week 27,week 28,third trimester,glucose tolerance,eyes open,seventh month', '🫁', 'moderate');
SET @w25 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 29-32 (Growth Phase)', 'Rapid weight gain for baby. Brain grows dramatically. Baby practices breathing. Growth scan done. Increased Braxton Hicks contractions. Baby size: squash.', 'pregnancy,week 29,week 30,week 31,week 32,growth scan,braxton hicks,weight gain,eighth month', '🎃', 'moderate');
SET @w29 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 33-36 (Pre-Delivery)', 'Baby moves into head-down position. Lungs nearly mature. NST (Non-Stress Test) may begin. Hospital bag should be ready. Baby size: honeydew melon.', 'pregnancy,week 33,week 34,week 35,week 36,head down,nst,pre delivery,ninth month,hospital bag', '🍈', 'moderate');
SET @w33 = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy: Weeks 37-40 (Full Term & Delivery)', 'Baby is full term and ready for birth. Cervix begins to dilate. Watch for labor signs: regular contractions, water breaking, bloody show. Baby size: watermelon.', 'pregnancy,week 37,week 38,week 39,week 40,full term,delivery,labor,contractions,due date', '🍉', 'severe');
SET @w37 = LAST_INSERT_ID();

-- Common Pregnancy Issues
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Morning Sickness (Pregnancy Nausea)', 'Nausea and vomiting in pregnancy, worst during weeks 6-12. Affects 80% of pregnant women. Usually improves by week 14. Severe form called Hyperemesis Gravidarum.', 'morning sickness,nausea,vomiting,pregnancy,hg,hyperemesis', '🤢', 'moderate');
SET @ms = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Gestational Diabetes', 'Diabetes that develops during pregnancy (usually week 24-28). Affects 10% of pregnancies. Baby grows too large if uncontrolled. Usually resolves after delivery.', 'gestational diabetes,gdm,glucose,pregnancy sugar,large baby,insulin', '🩸', 'severe');
SET @gd = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Preeclampsia', 'Dangerous pregnancy complication with high BP and protein in urine after week 20. Can affect liver, kidneys, and brain. Only cure is delivery.', 'preeclampsia,toxemia,high bp pregnancy,swelling,protein urine,headache', '🚨', 'severe');
SET @pe = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy Back Pain & Sciatica', 'Lower back pain affecting 50-70% of pregnant women. Caused by weight gain, posture changes, and hormone relaxin loosening joints.', 'back pain,sciatica,pregnancy pain,posture,relaxin,lumbar', '🔙', 'moderate');
SET @bp = LAST_INSERT_ID();

INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(@preg_cat, 'Pregnancy Heartburn & Constipation', 'Progesterone relaxes digestive muscles causing acid reflux (affecting 80%) and constipation (affecting 40%) during pregnancy.', 'heartburn,constipation,pregnancy,acid reflux,progesterone,digestion', '🔥', 'mild');
SET @hc = LAST_INSERT_ID();

-- ==========================================
-- FOODS - WEEK BY WEEK
-- ==========================================

-- Weeks 1-4: Focus on Folic Acid & Foundation
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w1, 'Dark Leafy Greens', 'Spinach, kale, methi (fenugreek leaves)', 'eat', 'Critical folic acid source - prevents neural tube defects (spina bifida) in baby'),
(@w1, 'Lentils & Beans', 'Moong dal, masoor dal, rajma', 'eat', 'Rich in folate, iron, and protein needed for implantation'),
(@w1, 'Eggs', 'Well-cooked whole eggs', 'eat', 'Choline is essential for baby brain and spinal cord development'),
(@w1, 'Citrus Fruits', 'Orange, sweet lime, grapefruit', 'eat', 'Vitamin C aids iron absorption and supports immune system'),
(@w1, 'Nuts & Seeds', 'Almonds, walnuts, flaxseeds', 'eat', 'Omega-3, Vitamin E, and healthy fats for cell development'),
(@w1, 'Whole Grains', 'Brown rice, whole wheat roti, oats', 'eat', 'B vitamins and fiber for energy and digestion'),
(@w1, 'Alcohol', 'Any alcoholic drinks', 'avoid', 'ZERO alcohol is safe in pregnancy. Causes fetal alcohol syndrome'),
(@w1, 'Raw/Undercooked Meat', 'Sushi, rare steak, raw eggs', 'avoid', 'Risk of Toxoplasma, Salmonella, and Listeria infections'),
(@w1, 'High Mercury Fish', 'Shark, swordfish, king mackerel, tilefish', 'avoid', 'Mercury damages developing baby brain and nervous system'),
(@w1, 'Unpasteurized Products', 'Raw milk, soft cheese (brie, feta)', 'avoid', 'Risk of Listeria which can cause miscarriage'),
(@w1, 'Excess Caffeine', 'More than 200mg/day (2 small cups)', 'avoid', 'Increases miscarriage risk by 25% in first trimester');

-- Weeks 5-8: Combat Nausea + Build Blood
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w5, 'Ginger', 'Fresh ginger tea, ginger biscuits', 'eat', 'Proven to reduce pregnancy nausea by 50%. Safe and effective'),
(@w5, 'Crackers/Toast (plain)', 'Dry crackers before getting out of bed', 'eat', 'Absorbs stomach acid. Eat before standing up in morning'),
(@w5, 'Banana', 'Fresh ripe banana', 'eat', 'Vitamin B6 reduces nausea. Gentle on stomach, provides energy'),
(@w5, 'Yogurt/Curd', 'Plain fresh yogurt', 'eat', 'Probiotics help digestion, calcium for baby bone formation'),
(@w5, 'Pomegranate', 'Fresh pomegranate or juice', 'eat', 'Builds blood, rich in iron and folic acid for increasing blood volume'),
(@w5, 'Small Frequent Meals', 'Eat every 2-3 hours, small portions', 'eat', 'Empty stomach worsens nausea. Keep something in stomach always'),
(@w5, 'Coconut Water', 'Fresh tender coconut', 'eat', 'Prevents dehydration from vomiting, replaces electrolytes'),
(@w5, 'Strong Smelling Foods', 'Garlic, onion, fish when cooking', 'avoid', 'Heightened smell sensitivity triggers nausea in pregnancy'),
(@w5, 'Spicy/Oily Food', 'Deep fried, heavy curries', 'avoid', 'Worsens nausea and causes acid reflux'),
(@w5, 'Empty Stomach', 'Skipping meals or long gaps', 'avoid', 'Low blood sugar triggers nausea. Never let stomach be empty'),
(@w5, 'Papaya (raw/unripe)', 'Raw papaya or papaya seeds', 'avoid', 'Contains papain/latex which may cause uterine contractions');

-- Weeks 9-12: Brain Development Foods
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w9, 'Fatty Fish (low mercury)', 'Salmon, sardines (2 servings/week)', 'eat', 'DHA omega-3 critical for baby brain development in first trimester'),
(@w9, 'Walnuts', '4-5 walnuts daily', 'eat', 'Plant-based omega-3 (ALA) for brain and eye development'),
(@w9, 'Sweet Potato', 'Baked or boiled sweet potato', 'eat', 'Beta-carotene converts to Vitamin A for organ development'),
(@w9, 'Broccoli', 'Steamed broccoli', 'eat', 'Folate, calcium, fiber, and antioxidants all in one'),
(@w9, 'Dairy (milk, paneer, cheese)', 'Pasteurized dairy products', 'eat', 'Calcium and protein for developing skeleton - baby needs 200mg/day'),
(@w9, 'Red Meat (well-cooked)', 'Lean mutton or chicken', 'eat', 'Heme iron is best absorbed form. Prevents pregnancy anemia'),
(@w9, 'Dates (2-3 daily)', 'Fresh or dried dates', 'eat', 'Iron, fiber, and natural energy. Helps prevent constipation'),
(@w9, 'Pineapple (large amounts)', 'Excess fresh pineapple', 'avoid', 'Bromelain enzyme may soften cervix in large quantities'),
(@w9, 'Liver', 'Chicken liver, goat liver', 'avoid', 'Extremely high Vitamin A (retinol) - toxic to baby in excess'),
(@w9, 'Ajinomoto/MSG', 'Chinese food with MSG', 'avoid', 'May affect baby brain development. Avoid processed foods with MSG');

-- Weeks 13-16: Calcium & Growth
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w13, 'Milk & Dairy', '500ml milk daily or equivalent', 'eat', 'Baby skeleton forming rapidly - needs 1000mg calcium/day from mother'),
(@w13, 'Ragi (Finger Millet)', 'Ragi porridge, ragi dosa', 'eat', 'Highest calcium among cereals. 3x more calcium than milk per weight'),
(@w13, 'Sesame Seeds (Til)', 'In food or til chikkis', 'eat', 'Extremely rich in calcium, iron, and healthy fats'),
(@w13, 'Paneer/Tofu', 'Fresh paneer or firm tofu', 'eat', 'High protein and calcium for baby growth spurt'),
(@w13, 'Avocado', 'Fresh avocado', 'eat', 'Healthy fats, folate, potassium, and Vitamin K for baby'),
(@w13, 'Green Peas', 'Fresh or frozen peas', 'eat', 'Good protein, fiber, and folate source for vegetarians'),
(@w13, 'Junk Food', 'Chips, instant noodles, fast food', 'avoid', 'Empty calories with harmful preservatives, no nutrition for baby'),
(@w13, 'Excess Salt', 'Pickles, papad, salty snacks', 'avoid', 'Increases water retention and blood pressure risk');

-- Weeks 17-20: Iron Rich (Blood Volume Doubles)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w17, 'Beetroot', 'Fresh beetroot juice or cooked', 'eat', 'Iron and folic acid - blood volume increases 50% by now'),
(@w17, 'Spinach + Lemon', 'Spinach with lemon juice', 'eat', 'Iron from spinach + Vitamin C from lemon = maximum absorption'),
(@w17, 'Jaggery (Gud)', 'Replace sugar with jaggery', 'eat', 'Natural iron source. Much better than refined sugar'),
(@w17, 'Chicken/Mutton', 'Well-cooked lean meat', 'eat', 'Heme iron absorbs 2-3x better than plant iron. Prevents anemia'),
(@w17, 'Dried Fruits', 'Raisins, apricots, figs', 'eat', 'Concentrated iron and energy. Great snack between meals'),
(@w17, 'Amla (Indian Gooseberry)', 'Fresh amla or amla juice', 'eat', 'Highest natural Vitamin C - boosts iron absorption dramatically'),
(@w17, 'Tea/Coffee with meals', 'Drinking tea during iron-rich meals', 'avoid', 'Tannins reduce iron absorption by 60%. Wait 1 hour after meals'),
(@w17, 'Excess Calcium with Iron', 'Milk + iron tablet together', 'avoid', 'Calcium blocks iron absorption. Separate by 2 hours');

-- Weeks 21-24: DHA & Brain (Baby Brain Grows Rapidly)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w21, 'Fatty Fish (Salmon, Sardines)', '2-3 servings per week', 'eat', 'DHA is building block of baby brain. 70% of brain is fat'),
(@w21, 'Walnuts & Flaxseeds', 'Daily handful of walnuts', 'eat', 'ALA converts to DHA. Essential for baby eye and brain'),
(@w21, 'Eggs (DHA-enriched)', 'Omega-3 enriched eggs', 'eat', 'Easy source of DHA + choline for brain development'),
(@w21, 'Berries', 'Blueberries, strawberries', 'eat', 'Antioxidants protect developing baby brain cells'),
(@w21, 'Sunflower Seeds', 'Raw sunflower seeds as snack', 'eat', 'Vitamin E, selenium, and magnesium for brain protection'),
(@w21, 'Ghee (moderate)', '1-2 tsp desi ghee daily', 'eat', 'Good fats aid babys brain development and mothers digestion'),
(@w21, 'Trans Fats', 'Margarine, vanaspati, bakery items', 'avoid', 'Trans fats interfere with DHA reaching baby brain'),
(@w21, 'Artificial Sweeteners', 'Diet soda, sugar-free products', 'avoid', 'Cross placenta and may affect baby development');

-- Weeks 25-28: Glucose Control & Energy
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w25, 'Complex Carbs', 'Brown rice, multigrain roti, oats', 'eat', 'Steady energy without sugar spikes. Prevents gestational diabetes'),
(@w25, 'Protein Every Meal', 'Dal, eggs, paneer, chicken', 'eat', 'Protein slows sugar absorption and keeps you full longer'),
(@w25, 'Fiber-Rich Foods', 'Vegetables, whole grains, fruits with skin', 'eat', 'Fiber prevents constipation AND controls blood sugar levels'),
(@w25, 'Cinnamon (small amounts)', 'In oatmeal or warm milk', 'eat', 'Naturally improves insulin sensitivity during pregnancy'),
(@w25, 'Ladyfinger/Okra (Bhindi)', 'Fresh okra in meals', 'eat', 'Soluble fiber helps control blood sugar and aids digestion'),
(@w25, 'White Rice (excess)', 'Large portions of white rice', 'avoid', 'High glycemic index spikes blood sugar. Use brown rice instead'),
(@w25, 'Sweets/Mithai', 'Indian sweets, cakes, chocolates', 'avoid', 'Sugar spikes increase gestational diabetes risk at this stage'),
(@w25, 'Fruit Juice (packaged)', 'Packaged juices with added sugar', 'avoid', 'Concentrated sugar without fiber. Eat whole fruits instead'),
(@w25, 'Maida/Refined Flour', 'White bread, naan, biscuits', 'avoid', 'Rapid glucose spike. Choose whole wheat alternatives');

-- Weeks 29-32: Baby Weight Gain Foods
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w29, 'Ghee & Healthy Fats', '2 tsp ghee daily in food', 'eat', 'Baby gains 250g per week now. Healthy fats essential for weight gain'),
(@w29, 'Milk (before bed)', 'Warm milk with turmeric or saffron', 'eat', 'Calcium for baby bones + protein for growth + aids mothers sleep'),
(@w29, 'Banana & Dates', 'Banana shake or dates milkshake', 'eat', 'Calorie-dense natural foods that help baby gain healthy weight'),
(@w29, 'Coconut', 'Fresh coconut, coconut milk in food', 'eat', 'Lauric acid (also in breast milk) supports baby immune system'),
(@w29, 'Almonds (soaked)', '8-10 soaked almonds daily', 'eat', 'Vitamin E, protein, healthy fats for baby brain and body growth'),
(@w29, 'Frequent Small Meals', '6 small meals instead of 3 large', 'eat', 'Baby pressing on stomach reduces capacity. Small meals prevent heartburn'),
(@w29, 'Heavy Meals at Night', 'Large dinner close to bed', 'avoid', 'Causes severe heartburn and disrupts sleep in third trimester'),
(@w29, 'Excess Water Before Bed', 'Large amounts of water at night', 'avoid', 'Frequent urination already disrupts sleep. Hydrate during daytime');

-- Weeks 33-36: Prepare for Delivery
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w33, 'Dates (6 per day)', 'Start eating 6 dates daily from week 36', 'eat', 'Studies show dates reduce need for labor induction and shorten labor'),
(@w33, 'Raspberry Leaf Tea', 'Start from week 34-36', 'eat', 'Tones uterine muscles. May help shorter, easier labor'),
(@w33, 'Iron-Rich Foods', 'Continue spinach, meat, jaggery', 'eat', 'Build iron stores for blood loss during delivery'),
(@w33, 'Protein (increased)', 'Extra dal, eggs, meat, paneer', 'eat', 'Baby brain makes 250,000 neurons per minute. Needs protein'),
(@w33, 'Pineapple (fresh)', 'Fresh pineapple from week 36+', 'eat', 'Bromelain may help ripen cervix when eaten near due date'),
(@w33, 'Ghee (1 tbsp daily)', 'Desi ghee in dal or roti', 'eat', 'Traditional belief + helps lubricate for delivery. Good calories'),
(@w33, 'Excess Spicy Food', 'Very hot food to induce labor', 'avoid', 'Causes heartburn and diarrhea, not proven to induce labor safely'),
(@w33, 'Raw Sprouts', 'Raw moong or bean sprouts', 'avoid', 'Risk of E.coli and Salmonella - cook sprouts thoroughly');

-- Weeks 37-40: Ready for Delivery
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@w37, 'Light Digestible Meals', 'Khichdi, soup, dal-rice', 'eat', 'Easy digestion important. Heavy food may cause vomiting during labor'),
(@w37, 'Energy Snacks for Labor', 'Dates, honey, banana, energy bars', 'eat', 'Natural sugars provide energy during long labor hours'),
(@w37, 'Coconut Water', 'Stay hydrated', 'eat', 'Electrolytes and hydration essential as delivery approaches'),
(@w37, 'Omega-3 Foods', 'Continue walnuts, fish', 'eat', 'Supports breast milk production that starts soon after delivery'),
(@w37, 'Saffron Milk', 'Warm milk with few strands of saffron', 'eat', 'Traditional preparation. Saffron may help cervix preparation'),
(@w37, 'Very Heavy Food', 'Biryani, heavy non-veg curries', 'avoid', 'If labor starts, full stomach may cause vomiting during delivery'),
(@w37, 'Castor Oil', 'Castor oil to induce labor', 'avoid', 'Dangerous - causes severe diarrhea, dehydration, and distress');

-- ==========================================
-- MEDICINES (Supplements, Scans, Blood Tests)
-- ==========================================

-- Weeks 1-4
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w1, 'Folic Acid', 'MOST IMPORTANT supplement in early pregnancy. Prevents neural tube defects (spina bifida)', '5mg daily (start even before conception)', 'Essential Supplement', 'Start immediately when planning pregnancy. Continue until week 12 minimum.'),
(@w1, 'Urine Pregnancy Test (UPT)', 'Confirm pregnancy at home', 'After missed period (week 4-5)', 'Test', 'Best done with first morning urine for accurate result.'),
(@w1, 'Beta-hCG Blood Test', 'Confirms pregnancy and checks hormone levels', 'If UPT positive, to confirm', 'Blood Test', 'Rising hCG levels indicate healthy pregnancy. Doubling every 48-72 hours is normal.'),
(@w1, 'Progesterone (if prescribed)', 'Supports early pregnancy in some cases', 'As prescribed by doctor', 'Hormone', 'Only if doctor prescribes for history of miscarriage or low progesterone levels.');

-- Weeks 5-8
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w5, 'First Ultrasound (Dating Scan)', 'Confirms heartbeat, due date, single/twin pregnancy', 'Week 6-8', 'Scan', 'Transvaginal scan may be needed this early. Confirms viable pregnancy with heartbeat.'),
(@w5, 'Folic Acid (continue)', 'Continue folic acid daily', '5mg daily', 'Essential Supplement', 'Neural tube closes by week 6. Critical to not miss doses.'),
(@w5, 'Iron + Folic Acid Tablet', 'Combined iron-folic acid supplement', '1 tablet daily after meals', 'Supplement', 'Take after food to avoid nausea. Do not take with tea/milk.'),
(@w5, 'Vitamin B6 (for nausea)', 'Helps reduce morning sickness', '25mg three times daily', 'Supplement', 'First-line treatment for pregnancy nausea. Safe for baby.'),
(@w5, 'Blood Group & Rh Factor', 'Essential blood test', 'First visit', 'Blood Test', 'Rh-negative mothers need Anti-D injection at week 28 to prevent complications.'),
(@w5, 'Complete Blood Count (CBC)', 'Checks hemoglobin, WBC, platelets', 'First visit', 'Blood Test', 'Hemoglobin should be above 11 g/dL. Below 10 needs treatment.'),
(@w5, 'Thyroid Test (TSH)', 'Thyroid function critical in pregnancy', 'First visit', 'Blood Test', 'Uncontrolled thyroid can cause miscarriage and developmental issues.'),
(@w5, 'Blood Sugar (Fasting & PP)', 'Screen for pre-existing diabetes', 'First visit', 'Blood Test', 'High sugar early means pre-existing diabetes (not gestational). Needs immediate control.');

-- Weeks 9-12
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w9, 'NT Scan (Nuchal Translucency)', 'Ultrasound measuring fluid behind baby neck', 'Week 11-13', 'Scan', 'Screens for Down syndrome and chromosomal abnormalities. Combined with blood test for accuracy.'),
(@w9, 'Double Marker Test', 'Blood test for chromosomal abnormality risk', 'Week 11-13 (with NT scan)', 'Blood Test', 'Measures PAPP-A and free beta-hCG. Combined with NT scan gives risk assessment.'),
(@w9, 'Calcium Supplement', 'Start calcium for baby bone development', '500mg twice daily (total 1000mg)', 'Supplement', 'Take separately from iron tablet (2 hour gap). Take with Vitamin D for absorption.'),
(@w9, 'Vitamin D3', 'Essential for calcium absorption and immunity', '1000-2000 IU daily', 'Supplement', 'Most Indian women are deficient. Critical for baby bone development.'),
(@w9, 'Urine Routine Test', 'Checks for infection, protein, sugar', 'Every visit', 'Test', 'Protein in urine may indicate preeclampsia. Sugar may indicate diabetes.');

-- Weeks 13-16
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w13, 'Quadruple Marker Test', 'Blood test for Down syndrome risk (if NT scan missed)', 'Week 15-18', 'Blood Test', 'Only if first trimester screening was not done. Checks AFP, hCG, Estriol, Inhibin-A.'),
(@w13, 'DHA/Omega-3 Supplement', 'For baby brain and eye development', '200-300mg DHA daily', 'Supplement', 'Fish oil or algae-based DHA. Critical for brain development happening now.'),
(@w13, 'Continue Iron + Calcium + D3', 'All supplements continue throughout', 'Daily as prescribed', 'Supplement', 'Never take iron and calcium together. Iron in morning, calcium at night.'),
(@w13, 'TIFFA/Anomaly Scan (booking)', 'Schedule detailed scan for week 18-20', 'Book appointment for week 18-20', 'Scan', 'Most important scan of pregnancy. Checks all baby organs in detail.');

-- Weeks 17-20
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w17, 'TIFFA Scan (Anomaly/Level 2 Ultrasound)', 'Detailed scan checking ALL baby organs', 'Week 18-20 (ideal: week 20)', 'Scan', 'Checks brain, heart, spine, kidneys, limbs, face, placenta. Most detailed scan of pregnancy.'),
(@w17, 'Hemoglobin Check', 'Recheck for anemia (blood volume increasing)', 'Week 18-20', 'Blood Test', 'Blood volume increases 50% by now. Hemoglobin may drop. Below 10 needs extra iron.'),
(@w17, 'Cervical Length Check', 'Measured during anomaly scan', 'Week 18-20', 'Scan', 'Cervix should be 3+ cm. Short cervix may need cerclage or bed rest.'),
(@w17, 'Anti-D Injection (if Rh negative)', 'For Rh-negative mothers only', 'Week 28 (book now)', 'Injection', 'Prevents mothers body from attacking baby blood cells. Given at week 28.');

-- Weeks 21-24
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w21, 'Glucose Challenge Test (GCT)', 'Screening for gestational diabetes', 'Week 24-28 (schedule now)', 'Blood Test', '50g glucose drink, blood test after 1 hour. If high, GTT test follows.'),
(@w21, 'Fetal Echo (if recommended)', 'Detailed heart scan of baby', 'Week 22-24', 'Scan', 'Only if family history of heart defects or other risk factors. Not routine for all.'),
(@w21, 'Continue All Supplements', 'Iron, Calcium, DHA, Vitamin D', 'Daily', 'Supplement', 'Do not stop any supplement without doctor advice. All critical through pregnancy.'),
(@w21, 'Kick Count Awareness', 'Start noticing baby movements pattern', 'Note if 10 kicks in 2 hours', 'Monitoring', 'Baby should move regularly. Decreased movement needs immediate doctor visit.');

-- Weeks 25-28
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w25, 'GTT (Glucose Tolerance Test)', '75g glucose test for gestational diabetes', 'Week 24-28', 'Blood Test', 'Fasting + 1 hour + 2 hour readings. Diagnoses gestational diabetes. Very important test.'),
(@w25, 'Anti-D Injection', 'For Rh-negative mothers', 'Week 28', 'Injection', 'Must not be missed if Rh-negative. Prevents hemolytic disease in baby.'),
(@w25, 'CBC Recheck', 'Complete blood count again', 'Week 26-28', 'Blood Test', 'Hemoglobin often drops in third trimester. May need IV iron if below 9.'),
(@w25, 'TT Vaccine (Tetanus Toxoid)', 'Two doses of tetanus vaccine', 'First dose week 24-28, second 4 weeks later', 'Vaccine', 'Protects mother and newborn from tetanus. Two doses essential.'),
(@w25, 'Growth Scan', 'Check baby growth and amniotic fluid', 'Week 28', 'Scan', 'Confirms baby growing well. Checks placenta position and fluid levels.');

-- Weeks 29-32
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w29, 'Growth Scan', 'Monitor baby weight and position', 'Week 30-32', 'Scan', 'Baby should be approximately 1.5-2 kg by week 32. Head-down position expected.'),
(@w29, 'CBC + Blood Sugar Recheck', 'Monitor hemoglobin and sugar', 'Week 30-32', 'Blood Test', 'Third trimester anemia is common. GDM mothers need frequent sugar monitoring.'),
(@w29, 'Steroid Injection (if preterm risk)', 'Betamethasone for baby lung maturity', 'Only if preterm delivery expected', 'Injection', 'Given ONLY if delivery expected before 34 weeks. Matures baby lungs in 48 hours.'),
(@w29, 'Kick Count Monitoring', 'Count baby movements daily', '10 movements in 2 hours (morning)', 'Monitoring', 'Reduced movements can indicate baby distress. Contact doctor immediately if less than 10.');

-- Weeks 33-36
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w33, 'NST (Non-Stress Test)', 'Monitors baby heart rate and contractions', 'Weekly from week 34-36', 'Test', 'Belts on belly track baby heartbeat pattern. Reactive (good) or Non-reactive (needs further testing).'),
(@w33, 'Group B Strep (GBS) Test', 'Vaginal and rectal swab', 'Week 35-37', 'Test', 'If positive, antibiotics given during labor to protect baby from infection.'),
(@w33, 'Growth & Presentation Scan', 'Confirm baby head-down, weight, fluid', 'Week 34-36', 'Scan', 'If baby is breech (feet down), ECV (turning) may be attempted or C-section planned.'),
(@w33, 'Blood Tests (Pre-delivery)', 'CBC, blood group crossmatch, coagulation', 'Week 34-36', 'Blood Test', 'Hospital preparation. Blood must be arranged in case of emergency during delivery.'),
(@w33, 'Hepatitis B & HIV Recheck', 'Retest for infections before delivery', 'Week 34-36', 'Blood Test', 'If positive, precautions during delivery protect the baby from transmission.');

-- Weeks 37-40
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@w37, 'Weekly NST', 'Non-stress test every week until delivery', 'Weekly', 'Test', 'Ensures baby is not in distress. Especially important if past due date.'),
(@w37, 'Cervical Check', 'Doctor checks cervix dilation and effacement', 'Week 37-38 onwards', 'Examination', 'Cervix should start softening and thinning. Early dilation is normal.'),
(@w37, 'Biophysical Profile (BPP)', 'Ultrasound + NST combined assessment', 'If past due date (40+ weeks)', 'Scan', 'Scores baby on 5 parameters. Low score may mean induction or C-section needed.'),
(@w37, 'Bishop Score Assessment', 'Readiness of cervix for labor', 'Before induction if needed', 'Examination', 'Higher score means cervix is favorable for vaginal delivery.');

-- ==========================================
-- FOODS FOR PREGNANCY ISSUES
-- ==========================================

-- Morning Sickness
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@ms, 'Ginger (all forms)', 'Ginger tea, ginger candy, ginger biscuits', 'eat', 'Most studied anti-nausea remedy in pregnancy. 1g/day reduces nausea by 50%'),
(@ms, 'Lemon', 'Smell fresh lemon or lemon water', 'eat', 'Lemon scent alone reduces nausea. Lemon water settles stomach'),
(@ms, 'Cold Foods', 'Cold fruits, smoothies, popsicles', 'eat', 'Cold food has less smell than hot food. Better tolerated during nausea'),
(@ms, 'Protein Snacks', 'Nuts, cheese, boiled eggs', 'eat', 'Protein stabilizes blood sugar and reduces nausea better than carbs'),
(@ms, 'Watermelon', 'Fresh cold watermelon', 'eat', 'High water content, sweet, cold, and easy on stomach'),
(@ms, 'Peppermint', 'Peppermint tea or candies', 'eat', 'Peppermint scent and taste reduces nausea and stomach cramping'),
(@ms, 'Hot/Spicy Food', 'Strong-smelling cooked food', 'avoid', 'Strong food smells are the biggest nausea trigger in pregnancy'),
(@ms, 'Iron Tablets (empty stomach)', 'Taking iron without food', 'avoid', 'Iron on empty stomach causes severe nausea. Always take after meals'),
(@ms, 'Large Meals', 'Big portions at once', 'avoid', 'Full stomach triggers nausea. Eat small amounts every 2 hours instead');

-- Gestational Diabetes
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@gd, 'Complex Carbs', 'Brown rice, multigrain roti, oats', 'eat', 'Slow-releasing carbs prevent sugar spikes while providing energy'),
(@gd, 'Protein with Every Meal', 'Eggs, dal, chicken, paneer', 'eat', 'Protein slows carb absorption and prevents blood sugar spikes'),
(@gd, 'Vegetables (non-starchy)', 'Leafy greens, capsicum, cucumber', 'eat', 'Low carb, high fiber, fills you up without raising sugar'),
(@gd, 'Cinnamon', 'Half tsp in food or warm water', 'eat', 'Improves insulin sensitivity naturally. Safe in food amounts'),
(@gd, 'Apple Cider Vinegar', '1 tsp diluted before carb-heavy meal', 'eat', 'Reduces post-meal glucose spike by 20% in studies'),
(@gd, 'Nuts (almonds, walnuts)', 'Handful as snack', 'eat', 'Healthy fats and protein stabilize blood sugar between meals'),
(@gd, 'White Rice', 'Polished white rice', 'avoid', 'Very high glycemic index. Spikes blood sugar rapidly'),
(@gd, 'Sweets/Desserts', 'Mithai, cakes, ice cream', 'avoid', 'Direct sugar that spikes glucose dangerously for baby'),
(@gd, 'Fruit Juice', 'Any packaged or fresh fruit juice', 'avoid', 'Concentrated sugar without fiber. Eat whole fruit instead'),
(@gd, 'White Bread/Maida', 'Naan, biscuits, pastries', 'avoid', 'Refined carbs act like sugar in blood. Choose whole wheat'),
(@gd, 'Potatoes (excess)', 'Large portions of potato dishes', 'avoid', 'High starch rapidly converts to sugar. Limit portions');

-- Pregnancy Heartburn & Constipation
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(@hc, 'Papaya (ripe)', 'Ripe papaya (NOT raw)', 'eat', 'Papain enzyme aids digestion and relieves constipation naturally'),
(@hc, 'Isabgol (Psyllium Husk)', '1 tsp in warm water at night', 'eat', 'Safe natural laxative in pregnancy. Adds bulk to stool'),
(@hc, 'Warm Water (morning)', 'Glass of warm water first thing', 'eat', 'Stimulates bowel movement. Add lemon for extra benefit'),
(@hc, 'Buttermilk', 'Fresh buttermilk after meals', 'eat', 'Probiotics aid digestion. Cooling effect reduces heartburn'),
(@hc, 'Coconut Water', 'Fresh coconut water', 'eat', 'Alkaline nature neutralizes acid. Also prevents dehydration'),
(@hc, 'Fennel Seeds (Saunf)', 'Chew after meals or saunf water', 'eat', 'Natural antacid and digestive aid. Safe in pregnancy'),
(@hc, 'Spicy Food', 'Chili, hot sauce, pepper', 'avoid', 'Directly triggers acid reflux. Worsens heartburn significantly'),
(@hc, 'Fried/Oily Food', 'Deep fried items', 'avoid', 'Slows digestion and relaxes esophageal sphincter causing reflux'),
(@hc, 'Lying Down After Meals', 'Sleeping immediately after eating', 'avoid', 'Gravity helps keep acid down. Wait 2-3 hours before lying down'),
(@hc, 'Caffeine', 'Coffee and strong tea', 'avoid', 'Stimulates acid production AND relaxes sphincter - double problem');

-- ==========================================
-- MEDICINES FOR PREGNANCY ISSUES
-- ==========================================

-- Morning Sickness
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@ms, 'Vitamin B6 (Pyridoxine)', 'First-line treatment for pregnancy nausea', '25mg three times daily', 'Supplement', 'Safe and effective. Can be combined with Doxylamine for severe nausea.'),
(@ms, 'Doxylamine + B6 (Doxinate)', 'Combination anti-nausea tablet', '1 tablet at bedtime', 'Anti-emetic', 'FDA-approved for pregnancy nausea. May cause drowsiness.'),
(@ms, 'Ondansetron (Emeset)', 'For severe nausea not responding to B6', '4mg as needed', 'Anti-emetic', 'Only if prescribed by doctor. Reserved for severe cases (Hyperemesis).'),
(@ms, 'Ginger Capsules', 'Standardized ginger supplement', '250mg four times daily', 'Herbal', 'As effective as Vitamin B6 in studies. Natural alternative.');

-- Gestational Diabetes
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@gd, 'Glucometer (Self-monitoring)', 'Blood sugar monitor at home', 'Check fasting + 2 hours after each meal', 'Device', 'Targets: Fasting below 95, 2-hour post-meal below 120 mg/dL.'),
(@gd, 'Insulin (if diet fails)', 'Insulin injections for uncontrolled GDM', 'As prescribed by endocrinologist', 'Hormone', 'Needed if sugar not controlled by diet alone. Does NOT cross placenta - safe for baby.'),
(@gd, 'Metformin (alternative)', 'Oral medication for GDM', '500mg-2000mg daily', 'Biguanide', 'Some doctors prefer insulin. Metformin crosses placenta. Discuss with doctor.');

-- Preeclampsia
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@pe, 'Low-Dose Aspirin (preventive)', 'For women at high risk of preeclampsia', '75-150mg daily from week 12', 'Antiplatelet', 'Only if prescribed based on risk factors. Reduces preeclampsia risk by 17%.'),
(@pe, 'BP Monitoring (home)', 'Regular blood pressure checks', 'Twice daily if at risk', 'Monitoring', 'Seek emergency care if BP above 160/110 or severe headache/vision changes.'),
(@pe, 'Calcium Supplement (high dose)', '1.5-2g calcium for prevention in high-risk', '1500-2000mg daily', 'Supplement', 'WHO recommends high-dose calcium in populations with low calcium intake.');

-- Pregnancy Back Pain
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(@bp, 'Prenatal Yoga', 'Specific poses for pregnancy back pain', '20-30 minutes daily', 'Exercise', 'Cat-cow pose, child pose, and pelvic tilts specifically help pregnancy back pain.'),
(@bp, 'Pregnancy Support Belt', 'Maternity belly band', 'Wear during activities, remove at rest', 'Support Device', 'Takes weight off lower back. Very helpful from week 24 onwards.'),
(@bp, 'Warm Compress', 'Warm (not hot) water bottle on back', '15-20 minutes as needed', 'Home Remedy', 'Do not use heating pad directly on belly. Warm compress on lower back is safe.');

-- ==========================================
-- TIPS - WEEK BY WEEK
-- ==========================================

-- Weeks 1-4
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w1, 'Start Folic Acid immediately (5mg daily). Neural tube forms in first 28 days - often before you know you are pregnant.', 1),
(@w1, 'Stop alcohol completely. There is NO safe amount of alcohol during pregnancy.', 2),
(@w1, 'Avoid hot tubs, saunas, and very hot baths. High temperature can harm early development.', 3),
(@w1, 'Inform your doctor about ALL medications you take. Many common medicines are unsafe in pregnancy.', 4),
(@w1, 'Start prenatal vitamins now. If planning pregnancy, start 3 months before conception.', 5);

-- Weeks 5-8
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w5, 'Nausea is actually a GOOD sign - it means pregnancy hormones are strong. It usually improves by week 12-14.', 1),
(@w5, 'Keep crackers by bedside. Eat 2-3 plain crackers before getting out of bed in the morning.', 2),
(@w5, 'Get your first ultrasound at week 6-8 to confirm heartbeat and due date.', 3),
(@w5, 'Get blood tests done: CBC, blood group, thyroid, sugar, HIV, Hepatitis B, VDRL, urine routine.', 4),
(@w5, 'Fatigue is extreme in first trimester. Sleep whenever possible. Your body is building a placenta.', 5);

-- Weeks 9-12
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w9, 'NT scan + Double Marker test (week 11-13) is your first screening for chromosomal abnormalities. Dont miss it.', 1),
(@w9, 'Miscarriage risk drops significantly after seeing heartbeat and crossing week 12. Stay positive.', 2),
(@w9, 'Start calcium supplement now - baby bones are forming. Take separately from iron (2-hour gap).', 3),
(@w9, 'Avoid heavy lifting, strenuous exercise, and long travel in first trimester.', 4),
(@w9, 'Announce pregnancy to family/workplace after week 12 when risk drops. Your choice on timing.', 5);

-- Weeks 13-16
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w13, 'Energy returns in second trimester! This is the best time to exercise, travel, and prepare nursery.', 1),
(@w13, 'Book your Anomaly Scan (TIFFA) for week 18-20. This is the most important scan.', 2),
(@w13, 'Start sleeping on your LEFT side. This improves blood flow to baby and reduces stillbirth risk.', 3),
(@w13, 'Begin Kegel exercises daily - strengthens pelvic floor for delivery and prevents incontinence.', 4),
(@w13, 'Dental checkup recommended now - pregnancy hormones can cause gum disease which affects baby.', 5);

-- Weeks 17-20
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w17, 'Anomaly scan at week 18-20 checks baby brain, heart, spine, kidneys, limbs, and all organs. Most important scan!', 1),
(@w17, 'You may start feeling baby movements (quickening). First-time moms feel it later (week 18-22).', 2),
(@w17, 'Iron needs increase dramatically now. Eat iron-rich food with Vitamin C, not with tea/milk.', 3),
(@w17, 'Stay hydrated - drink 3 liters water daily. Dehydration can cause preterm contractions.', 4),
(@w17, 'Start moisturizing belly and thighs daily to reduce stretch marks. Coconut oil or bio-oil helps.', 5);

-- Weeks 21-24
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w21, 'Week 24 is viability milestone - baby can survive outside womb with NICU care from this point.', 1),
(@w21, 'Schedule Glucose Tolerance Test (GTT) for week 24-28. Tests for gestational diabetes.', 2),
(@w21, 'Start counting baby kicks. You should feel at least 10 movements in 2 hours.', 3),
(@w21, 'DHA supplement is critical now - baby brain grows fastest between weeks 20-36.', 4),
(@w21, 'Enroll in a childbirth preparation class. Learn about labor stages, breathing, and pain management.', 5);

-- Weeks 25-28
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w25, 'GTT (Glucose Tolerance Test) is mandatory at week 24-28. Dont skip - gestational diabetes affects 10% of pregnancies.', 1),
(@w25, 'Get TT (Tetanus) vaccine: first dose now, second dose 4 weeks later.', 2),
(@w25, 'If Rh-negative blood group, Anti-D injection is due at week 28. Do not miss!', 3),
(@w25, 'Baby can now hear your voice. Talk, sing, and play music for bonding.', 4),
(@w25, 'Start preparing hospital bag list. Items: nightgown, baby clothes, diapers, documents, snacks.', 5);

-- Weeks 29-32
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w29, 'Baby gains about 250 grams per week now. Eat nutrient-dense foods, not junk calories.', 1),
(@w29, 'Growth scan at week 30-32 checks if baby is growing well and has enough amniotic fluid.', 2),
(@w29, 'Braxton Hicks (practice contractions) are normal. Real labor contractions are regular and get stronger.', 3),
(@w29, 'Sleep on left side with pillow between knees. This position gives maximum blood flow to baby.', 4),
(@w29, 'Watch for warning signs: sudden swelling in face/hands, severe headache, vision changes = preeclampsia. Rush to hospital.', 5);

-- Weeks 33-36
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w33, 'Pack hospital bag by week 35. Baby can come anytime from week 37 onwards.', 1),
(@w33, 'NST (Non-Stress Test) starts weekly from week 34-36 to monitor baby heart rate patterns.', 2),
(@w33, 'Start eating 6 dates daily from week 36 - proven to reduce labor induction need by 43%.', 3),
(@w33, 'Perineal massage from week 34 reduces tearing during delivery by 10%. Ask doctor for technique.', 4),
(@w33, 'Pre-register at hospital. Keep all reports, blood group card, and ID ready in hospital bag.', 5);

-- Weeks 37-40
INSERT INTO tips (condition_id, tip, priority) VALUES
(@w37, 'Baby is full term from week 37. Labor can start anytime now. Know the signs!', 1),
(@w37, 'Signs of labor: regular contractions (every 5 min for 1 hour), water breaking, bloody show (mucus plug).', 2),
(@w37, 'Walk daily for 30 minutes - helps baby descend and can help initiate natural labor.', 3),
(@w37, 'When to rush to hospital: water breaks, bleeding, contractions every 5 minutes, reduced baby movements.', 4),
(@w37, 'Keep emergency contacts ready: doctor, hospital, ambulance. Ensure someone is always available to drive you.', 5);

-- Morning Sickness Tips
INSERT INTO tips (condition_id, tip, priority) VALUES
(@ms, 'Eat something within 15 minutes of waking up. Keep crackers on bedside table.', 1),
(@ms, 'Eat small meals every 2 hours. Empty stomach makes nausea worse.', 2),
(@ms, 'Sniff fresh lemon or keep lemon slices nearby. Citrus scent reduces nausea.', 3),
(@ms, 'Take iron tablets AFTER meals, never on empty stomach. This is the biggest cause of pregnancy nausea.', 4),
(@ms, 'Severe vomiting (cannot keep water down for 12+ hours) = Hyperemesis. Go to hospital for IV fluids.', 5);

-- Gestational Diabetes Tips
INSERT INTO tips (condition_id, tip, priority) VALUES
(@gd, 'Walk for 15-20 minutes after every meal. This single habit can control sugar without medication.', 1),
(@gd, 'Monitor sugar 4 times daily: fasting + 2 hours after each meal. Maintain a log for doctor.', 2),
(@gd, 'Eat protein before carbs in every meal. This reduces glucose spike by 30%.', 3),
(@gd, 'GDM does NOT mean you caused this or ate wrong. Its caused by placental hormones blocking insulin.', 4),
(@gd, 'Uncontrolled GDM risks: large baby (difficult delivery), low sugar in newborn, jaundice. Control is critical.', 5);

-- Preeclampsia Tips
INSERT INTO tips (condition_id, tip, priority) VALUES
(@pe, 'Know the warning signs: sudden swelling (face/hands), severe headache, blurred vision, upper abdominal pain.', 1),
(@pe, 'Monitor BP at home if you have risk factors. Above 140/90 needs immediate medical attention.', 2),
(@pe, 'Risk factors: first pregnancy, age over 35, family history, twin pregnancy, obesity, kidney disease.', 3),
(@pe, 'Preeclampsia can develop rapidly. Regular prenatal checkups are your best protection.', 4),
(@pe, 'The only cure for preeclampsia is delivery. Doctor will balance baby maturity vs. mother safety.', 5);

-- Back Pain Tips
INSERT INTO tips (condition_id, tip, priority) VALUES
(@bp, 'Wear low-heeled (not flat) shoes with good arch support. High heels shift center of gravity.', 1),
(@bp, 'When sitting, place a small pillow behind lower back. Dont slouch or cross legs.', 2),
(@bp, 'Sleep on side with pillow between knees and under belly. This aligns spine properly.', 3),
(@bp, 'Never bend from waist to pick things up. Always squat with bent knees keeping back straight.', 4),
(@bp, 'Swimming is the best exercise for pregnancy back pain - water supports your weight completely.', 5);

-- Heartburn & Constipation Tips
INSERT INTO tips (condition_id, tip, priority) VALUES
(@hc, 'Elevate head with extra pillows while sleeping. Gravity keeps acid in stomach.', 1),
(@hc, 'Eat dinner at least 2-3 hours before bedtime. Never lie down immediately after eating.', 2),
(@hc, 'Drink 8-10 glasses of water daily for constipation. Dehydration hardens stools.', 3),
(@hc, 'Walk after meals - even 10 minutes helps digestion and prevents acid reflux.', 4),
(@hc, 'Antacids with calcium (like Tums) are safe in pregnancy. Avoid sodium bicarbonate.', 5);
