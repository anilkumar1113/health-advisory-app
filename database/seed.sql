USE health_advisory;

-- Categories
INSERT INTO categories (name, description, icon) VALUES
('Viral & Infections', 'Common viral infections and bacterial illnesses', '🦠'),
('Kidney Health', 'Chronic Kidney Disease, kidney stones, and renal care', '🫘'),
('Diabetes', 'Type 1 and Type 2 diabetes management', '🩸'),
('Heart & BP', 'Cardiovascular health and blood pressure', '❤️'),
('Digestive Health', 'Stomach, liver, and intestinal conditions', '🫄'),
('Respiratory', 'Lungs, breathing, and respiratory conditions', '🫁'),
('Bone & Joint', 'Arthritis, osteoporosis, and musculoskeletal health', '🦴'),
('Nutritional Deficiency', 'Anemia, vitamin deficiency, and malnutrition', '💊');

-- ==========================================
-- CONDITIONS
-- ==========================================

-- Viral & Infections
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(1, 'Viral Fever', 'A fever caused by viral infections. Body temperature rises above 99°F (37.2°C). Usually lasts 3-7 days with proper care.', 'fever,viral,temperature,flu,body pain', '🤒', 'moderate'),
(1, 'Common Cold', 'Upper respiratory infection causing runny nose, sneezing, and mild fever. Usually self-limiting within 7-10 days.', 'cold,runny nose,sneezing,cough,sore throat', '🤧', 'mild'),
(1, 'Dengue Fever', 'Mosquito-borne viral infection causing high fever, severe headache, joint pain, and rash. Can be life-threatening if not managed.', 'dengue,mosquito,platelet,joint pain,rash', '🦟', 'severe'),
(1, 'Typhoid', 'Bacterial infection caused by Salmonella typhi, spread through contaminated food/water. Causes prolonged fever and weakness.', 'typhoid,salmonella,contaminated water,prolonged fever', '🤕', 'severe');

-- Kidney Health
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(2, 'Chronic Kidney Disease (CKD)', 'Progressive loss of kidney function over months or years. Stages 1-5 based on GFR levels. Requires strict diet management.', 'ckd,kidney,renal,gfr,creatinine,dialysis', '🫘', 'severe'),
(2, 'Kidney Stones', 'Hard mineral deposits that form in kidneys. Causes severe pain in back/side. Can be managed with diet and hydration.', 'kidney stones,renal calculi,pain,urine,calcium oxalate', '💎', 'moderate'),
(2, 'Urinary Tract Infection (UTI)', 'Bacterial infection in the urinary system. Causes burning sensation during urination and frequent urge to urinate.', 'uti,urinary,burning,infection,bladder', '🚽', 'mild');

-- Diabetes
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(3, 'Type 2 Diabetes', 'A chronic condition where the body becomes resistant to insulin or doesnt produce enough. Requires lifelong management through diet, exercise, and medication.', 'diabetes,sugar,insulin,glucose,hba1c,type 2', '🩸', 'severe'),
(3, 'Pre-Diabetes', 'Blood sugar levels higher than normal but not high enough for type 2 diabetes diagnosis. Reversible with lifestyle changes.', 'prediabetes,blood sugar,borderline,insulin resistance', '⚠️', 'moderate');

-- Heart & BP
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(4, 'Hypertension (High BP)', 'Blood pressure consistently above 130/80 mmHg. Silent killer with no symptoms initially. Requires medication and lifestyle changes.', 'bp,blood pressure,hypertension,high bp,systolic,diastolic', '📈', 'severe'),
(4, 'High Cholesterol', 'Elevated levels of LDL cholesterol in blood, increasing risk of heart disease and stroke.', 'cholesterol,ldl,hdl,triglycerides,statins,heart', '🫀', 'moderate');

-- Digestive Health
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(5, 'Gastritis', 'Inflammation of stomach lining causing burning pain, nausea, and indigestion. Triggered by spicy food, stress, or H. pylori bacteria.', 'gastritis,acidity,stomach,burning,ulcer,acid reflux', '🔥', 'moderate'),
(5, 'Fatty Liver', 'Excess fat buildup in liver cells. Common in overweight individuals. Can progress to cirrhosis if not managed.', 'fatty liver,nafld,liver,hepatic,cirrhosis', '🫁', 'moderate');

-- Respiratory
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(6, 'Asthma', 'Chronic respiratory condition causing airway inflammation, wheezing, and breathing difficulty. Triggered by allergens, cold air, or exercise.', 'asthma,wheezing,breathing,inhaler,bronchial', '🌬️', 'moderate'),
(6, 'COVID-19 Recovery', 'Post-COVID recovery phase. Many patients experience fatigue, breathlessness, and brain fog for weeks after infection.', 'covid,corona,recovery,long covid,fatigue,breathlessness', '😷', 'moderate');

-- Bone & Joint
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(7, 'Arthritis', 'Joint inflammation causing pain, swelling, and stiffness. Osteoarthritis is age-related; Rheumatoid is autoimmune.', 'arthritis,joint pain,swelling,stiffness,rheumatoid,osteo', '🦴', 'moderate'),
(7, 'Osteoporosis', 'Bones become weak and brittle due to loss of bone density. Common in postmenopausal women. Increases fracture risk.', 'osteoporosis,bone density,fracture,calcium,vitamin d', '🦷', 'moderate');

-- Nutritional Deficiency
INSERT INTO conditions (category_id, name, description, keywords, icon, severity) VALUES
(8, 'Iron Deficiency Anemia', 'Low red blood cell count due to insufficient iron. Causes fatigue, weakness, pale skin, and shortness of breath.', 'anemia,iron,hemoglobin,fatigue,pale,weakness', '🩸', 'moderate'),
(8, 'Vitamin D Deficiency', 'Insufficient vitamin D levels causing bone pain, muscle weakness, and increased infection risk. Very common in indoor lifestyles.', 'vitamin d,sunlight,bone pain,muscle weakness,calcium absorption', '☀️', 'mild');

-- ==========================================
-- FOODS - Viral Fever (condition_id = 1)
-- ==========================================
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(1, 'Warm Soup (Chicken/Vegetable)', 'Light broth-based soups', 'eat', 'Provides hydration, easy to digest, boosts immunity'),
(1, 'Khichdi (Rice + Lentils)', 'Soft cooked rice with moong dal', 'eat', 'Easy to digest, provides protein and energy'),
(1, 'Bananas', 'Ripe bananas', 'eat', 'Rich in potassium, easy on stomach, provides energy'),
(1, 'Coconut Water', 'Fresh coconut water', 'eat', 'Natural electrolyte replacement, prevents dehydration'),
(1, 'Ginger Tea', 'Fresh ginger boiled with water', 'eat', 'Anti-inflammatory, reduces nausea, soothes throat'),
(1, 'Turmeric Milk', 'Warm milk with turmeric powder', 'eat', 'Curcumin has anti-viral properties, boosts immunity'),
(1, 'Citrus Fruits (Orange, Lemon)', 'Fresh oranges or lemon water', 'eat', 'High in Vitamin C, strengthens immune system'),
(1, 'Oily/Fried Food', 'Deep fried snacks, pakoras', 'avoid', 'Hard to digest, increases inflammation'),
(1, 'Spicy Food', 'Chili-heavy dishes', 'avoid', 'Irritates stomach, may worsen nausea'),
(1, 'Cold Beverages', 'Ice cream, cold drinks, refrigerated items', 'avoid', 'Worsens throat irritation and congestion'),
(1, 'Heavy Non-Veg', 'Red meat, heavy curries', 'avoid', 'Difficult to digest when body is fighting infection');

-- FOODS - Common Cold (condition_id = 2)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(2, 'Honey with Warm Water', 'One spoon honey in lukewarm water', 'eat', 'Soothes sore throat, natural antibacterial'),
(2, 'Garlic', 'Raw or lightly cooked garlic', 'eat', 'Contains allicin, a natural antimicrobial compound'),
(2, 'Hot Pepper/Black Pepper', 'In soups or warm water', 'eat', 'Opens nasal passages, reduces congestion'),
(2, 'Yogurt', 'Fresh plain yogurt', 'eat', 'Probiotics support immune function'),
(2, 'Steamed Vegetables', 'Carrots, spinach, broccoli', 'eat', 'Rich in vitamins A and C for immune support'),
(2, 'Dairy (excess)', 'Too much milk or cheese', 'avoid', 'May increase mucus production in some people'),
(2, 'Sugar-heavy Foods', 'Candy, pastries, sugary drinks', 'avoid', 'Suppresses immune function temporarily'),
(2, 'Alcohol', 'Any alcoholic beverages', 'avoid', 'Dehydrates body and weakens immune response');

-- FOODS - Dengue (condition_id = 3)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(3, 'Papaya Leaf Juice', 'Extract from fresh papaya leaves', 'eat', 'Clinically shown to increase platelet count'),
(3, 'Pomegranate', 'Fresh pomegranate or juice', 'eat', 'Rich in iron and antioxidants, helps blood formation'),
(3, 'Coconut Water', 'Fresh tender coconut water', 'eat', 'Prevents dehydration, replenishes electrolytes'),
(3, 'Goat Milk', 'Fresh goat milk', 'eat', 'Contains selenium, helps increase platelet count'),
(3, 'Kiwi Fruit', 'Fresh kiwi', 'eat', 'High in Vitamin C and copper, supports platelet production'),
(3, 'Spinach', 'Fresh or lightly cooked spinach', 'eat', 'Rich in iron, Vitamin K, and folate'),
(3, 'Oily/Spicy Food', 'Fried and heavily spiced food', 'avoid', 'Strains digestive system which is already weak'),
(3, 'Caffeinated Drinks', 'Coffee, strong tea, energy drinks', 'avoid', 'Causes dehydration, increases heart rate'),
(3, 'Non-Vegetarian (heavy)', 'Red meat, fried chicken', 'avoid', 'Hard to digest when platelet count is low');

-- FOODS - CKD (condition_id = 5)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(5, 'Cabbage', 'Green or purple cabbage', 'eat', 'Low in potassium, high in Vitamin K and fiber'),
(5, 'Cauliflower', 'Steamed or raw cauliflower', 'eat', 'Low potassium, high in Vitamin C and folate'),
(5, 'Red Bell Pepper', 'Fresh red capsicum', 'eat', 'Low potassium, high in Vitamin A, C, and B6'),
(5, 'Garlic', 'Fresh garlic in cooking', 'eat', 'Anti-inflammatory, adds flavor without salt'),
(5, 'Egg Whites', 'Cooked egg whites only', 'eat', 'High quality protein with less phosphorus than yolk'),
(5, 'Apple', 'Fresh apple with skin', 'eat', 'Low potassium, anti-inflammatory, good fiber source'),
(5, 'Fish (small portions)', 'Omega-3 rich fish like salmon', 'eat', 'Anti-inflammatory omega-3 fats, high quality protein'),
(5, 'Bananas', 'Fresh bananas', 'avoid', 'Very high in potassium - dangerous for CKD patients'),
(5, 'Oranges', 'Oranges and orange juice', 'avoid', 'High potassium content, strains kidneys'),
(5, 'Tomatoes', 'Fresh tomatoes, tomato sauce', 'avoid', 'High in potassium and phosphorus'),
(5, 'Potatoes', 'Regular potatoes', 'avoid', 'Very high potassium - must be soaked/leached if eaten'),
(5, 'Spinach', 'Raw or cooked spinach', 'avoid', 'High in potassium and oxalates'),
(5, 'Processed/Canned Food', 'Canned soups, packaged snacks', 'avoid', 'Very high sodium content, strains kidneys'),
(5, 'Dairy (excess)', 'Excess milk, cheese, paneer', 'avoid', 'High in phosphorus which CKD kidneys cannot filter');

-- FOODS - Kidney Stones (condition_id = 6)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(6, 'Lemon Water', 'Fresh lemon juice in water', 'eat', 'Citrate prevents stone formation, increases urine volume'),
(6, 'Watermelon', 'Fresh watermelon', 'eat', 'High water content, helps flush kidneys'),
(6, 'Cucumber', 'Fresh cucumber', 'eat', 'High water content, low in oxalates'),
(6, 'Basil (Tulsi) Tea', 'Fresh basil leaves in hot water', 'eat', 'Contains acetic acid which helps dissolve stones'),
(6, 'Spinach', 'Raw or cooked spinach', 'avoid', 'Very high in oxalates which form calcium oxalate stones'),
(6, 'Beetroot', 'Fresh or cooked beetroot', 'avoid', 'High oxalate content increases stone risk'),
(6, 'Excess Salt', 'High sodium diet', 'avoid', 'Increases calcium in urine, promotes stone formation'),
(6, 'Cola/Soda', 'Carbonated soft drinks', 'avoid', 'Contains phosphoric acid, promotes stone formation');

-- FOODS - Type 2 Diabetes (condition_id = 8)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(8, 'Bitter Gourd (Karela)', 'Fresh or juice form', 'eat', 'Contains insulin-like compound that lowers blood sugar'),
(8, 'Fenugreek Seeds', 'Soaked overnight, eaten morning', 'eat', 'Slows carbohydrate digestion, improves insulin sensitivity'),
(8, 'Whole Oats', 'Steel-cut or rolled oats', 'eat', 'Low glycemic index, high soluble fiber'),
(8, 'Leafy Greens', 'Spinach, kale, lettuce', 'eat', 'Very low calorie, high in fiber and magnesium'),
(8, 'Cinnamon', 'Added to food or warm water', 'eat', 'Improves insulin sensitivity, lowers fasting glucose'),
(8, 'Nuts (Almonds, Walnuts)', 'Small handful daily', 'eat', 'Healthy fats, low GI, improve blood sugar control'),
(8, 'White Rice', 'Polished white rice', 'avoid', 'High glycemic index, spikes blood sugar rapidly'),
(8, 'White Bread', 'Refined flour bread', 'avoid', 'Rapidly converts to glucose, spikes blood sugar'),
(8, 'Sugary Drinks', 'Soda, packaged juice, sweetened tea', 'avoid', 'Directly raises blood sugar levels rapidly'),
(8, 'Mango/Grapes (excess)', 'High-sugar fruits in large quantity', 'avoid', 'High natural sugar content, raises glucose levels'),
(8, 'Fried Food', 'Samosa, pakora, fries', 'avoid', 'Increases insulin resistance and weight gain');

-- FOODS - Hypertension (condition_id = 10)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(10, 'Banana', 'Fresh ripe banana', 'eat', 'Rich in potassium which helps lower blood pressure'),
(10, 'Beetroot', 'Fresh beetroot or juice', 'eat', 'Contains nitrates that relax blood vessels'),
(10, 'Oats', 'Whole grain oats', 'eat', 'High fiber reduces systolic and diastolic BP'),
(10, 'Leafy Greens', 'Spinach, kale, swiss chard', 'eat', 'High in potassium and magnesium, lowers BP'),
(10, 'Garlic', 'Fresh or aged garlic', 'eat', 'Contains allicin which relaxes blood vessels'),
(10, 'Dark Chocolate (70%+)', 'Small piece of dark chocolate', 'eat', 'Flavonoids help dilate blood vessels'),
(10, 'Salt (excess)', 'High sodium diet', 'avoid', 'Directly raises blood pressure by retaining water'),
(10, 'Pickles/Papad', 'Indian pickles and papad', 'avoid', 'Extremely high in sodium'),
(10, 'Processed Meat', 'Sausage, salami, bacon', 'avoid', 'High sodium and saturated fat, raises BP'),
(10, 'Alcohol (excess)', 'More than 1-2 drinks per day', 'avoid', 'Raises blood pressure and damages heart over time');

-- FOODS - Gastritis (condition_id = 12)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(12, 'Banana', 'Ripe banana', 'eat', 'Natural antacid, coats stomach lining'),
(12, 'Oatmeal', 'Plain cooked oatmeal', 'eat', 'Absorbs stomach acid, gentle on lining'),
(12, 'Ginger', 'Fresh ginger or ginger tea', 'eat', 'Anti-inflammatory, reduces stomach inflammation'),
(12, 'Coconut Water', 'Fresh coconut water', 'eat', 'Soothes stomach lining, alkaline nature'),
(12, 'Plain Yogurt', 'Fresh unsweetened yogurt', 'eat', 'Probiotics heal stomach lining, reduces H.pylori'),
(12, 'Spicy Food', 'Chili, hot sauce, pepper (excess)', 'avoid', 'Irritates inflamed stomach lining, worsens pain'),
(12, 'Coffee', 'Regular or decaf coffee', 'avoid', 'Increases stomach acid production'),
(12, 'Alcohol', 'Any alcoholic drinks', 'avoid', 'Erodes stomach lining, worsens inflammation'),
(12, 'Citrus (excess)', 'Too much orange, lemon, tomato', 'avoid', 'Acidic nature irritates damaged stomach lining'),
(12, 'NSAIDs', 'Aspirin, Ibuprofen on empty stomach', 'avoid', 'Damages stomach lining directly');

-- FOODS - Anemia (condition_id = 17)
INSERT INTO foods (condition_id, name, description, food_type, benefit) VALUES
(17, 'Spinach', 'Fresh or cooked spinach', 'eat', 'Rich in iron and folate for red blood cell production'),
(17, 'Beetroot', 'Fresh beetroot or juice', 'eat', 'High in iron and folic acid, regenerates red blood cells'),
(17, 'Pomegranate', 'Fresh pomegranate or juice', 'eat', 'Rich in iron, vitamins A, C, E; increases hemoglobin'),
(17, 'Lentils (Dal)', 'All varieties of lentils', 'eat', 'Excellent plant-based iron and protein source'),
(17, 'Dates', 'Fresh or dried dates', 'eat', 'Rich in iron, natural energy booster'),
(17, 'Jaggery', 'Natural unrefined sugar', 'eat', 'Good iron source, better than white sugar'),
(17, 'Tea/Coffee with meals', 'Drinking tea during iron-rich meals', 'avoid', 'Tannins block iron absorption by up to 60%'),
(17, 'Calcium-rich foods with iron', 'Milk + spinach at same time', 'avoid', 'Calcium inhibits iron absorption when eaten together'),
(17, 'Excess Whole Grains', 'Too much wheat bran, brown rice', 'avoid', 'Phytates bind to iron and reduce absorption');

-- ==========================================
-- MEDICINES
-- ==========================================

-- Viral Fever
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(1, 'Paracetamol (Crocin/Dolo 650)', 'Reduces fever and body pain', '500-650mg every 6 hours as needed', 'Antipyretic/Analgesic', 'Do not exceed 4g per day. Consult doctor if fever persists beyond 3 days.'),
(1, 'ORS (Oral Rehydration Salt)', 'Prevents dehydration during fever', '1 sachet in 1 liter water, sip throughout day', 'Electrolyte Replacement', 'Safe for all ages. Essential during high fever with sweating.'),
(1, 'Vitamin C (500mg)', 'Supports immune system', '500mg once daily', 'Supplement', 'Can be taken as preventive. Not a cure for viral infection.');

-- Common Cold
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(2, 'Cetirizine', 'Antihistamine for runny nose and sneezing', '10mg once daily at bedtime', 'Antihistamine', 'May cause drowsiness. Do not drive after taking.'),
(2, 'Steam Inhalation', 'Relieves nasal congestion naturally', '10-15 minutes, 2-3 times daily', 'Home Remedy', 'Be careful with hot water to avoid burns. Add eucalyptus oil for better effect.'),
(2, 'Nasal Saline Spray', 'Clears nasal passages without medication', '2-3 sprays per nostril as needed', 'Decongestant', 'Safe for frequent use. No rebound congestion risk.');

-- Dengue
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(3, 'Paracetamol ONLY', 'For fever and pain in dengue', '500mg every 6 hours', 'Antipyretic', 'NEVER take Aspirin, Ibuprofen, or Brufen in dengue - they increase bleeding risk!'),
(3, 'IV Fluids (Hospital)', 'For severe dehydration or low platelets', 'As prescribed by doctor', 'Supportive', 'Hospitalization required if platelets drop below 50,000.');

-- CKD
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(5, 'ACE Inhibitors (Enalapril/Ramipril)', 'Protects kidney function, controls BP', 'As prescribed by nephrologist', 'Antihypertensive', 'Regular kidney function tests required. Do not stop without doctor advice.'),
(5, 'Sodium Bicarbonate', 'Corrects metabolic acidosis in CKD', 'As prescribed based on blood tests', 'Alkalizer', 'Only if blood tests show acidosis. Dose depends on bicarbonate levels.'),
(5, 'Erythropoietin (EPO)', 'Treats anemia in CKD patients', 'Injection as prescribed', 'Hormone', 'Given when hemoglobin drops below 10. Regular blood tests needed.');

-- Type 2 Diabetes
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(8, 'Metformin', 'First-line medication for type 2 diabetes', '500mg-2000mg daily as prescribed', 'Biguanide', 'Take with meals to reduce stomach upset. Regular HbA1c monitoring needed.'),
(8, 'Glimepiride', 'Stimulates insulin secretion from pancreas', '1-4mg once daily before breakfast', 'Sulfonylurea', 'Can cause low blood sugar. Always carry sugar/candy.'),
(8, 'Insulin (if needed)', 'External insulin for blood sugar control', 'Units as prescribed by endocrinologist', 'Hormone', 'Required when oral medicines are insufficient. Proper storage needed.');

-- Hypertension
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(10, 'Amlodipine', 'Calcium channel blocker for BP control', '5-10mg once daily', 'Antihypertensive', 'May cause ankle swelling. Do not stop abruptly.'),
(10, 'Telmisartan', 'ARB for blood pressure control', '20-80mg once daily', 'Antihypertensive', 'Monitor kidney function. Avoid in pregnancy.'),
(10, 'Aspirin (Low Dose)', 'Blood thinner for heart protection', '75mg once daily after food', 'Antiplatelet', 'Only if prescribed by cardiologist. Not for everyone with BP.');

-- Gastritis
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(12, 'Pantoprazole', 'Reduces stomach acid production', '40mg once daily before breakfast', 'Proton Pump Inhibitor', 'Take 30 min before meals. Long-term use needs doctor monitoring.'),
(12, 'Antacid Gel (Mucaine/Gelusil)', 'Neutralizes existing stomach acid', '10ml after meals and at bedtime', 'Antacid', 'Provides quick relief. Not for long-term daily use.'),
(12, 'Sucralfate', 'Forms protective coating on stomach lining', '1g four times daily on empty stomach', 'Mucosal Protectant', 'Take 1 hour before meals. Do not take with other medicines.');

-- Anemia
INSERT INTO medicines (condition_id, name, description, dosage, medicine_type, disclaimer) VALUES
(17, 'Ferrous Sulfate', 'Iron supplement for anemia', '325mg (65mg elemental iron) daily', 'Iron Supplement', 'Take on empty stomach with Vitamin C for better absorption. May cause dark stools.'),
(17, 'Folic Acid', 'Supports red blood cell production', '5mg once daily', 'B-Vitamin', 'Essential along with iron. Especially important in pregnancy.'),
(17, 'Vitamin B12', 'For B12 deficiency anemia', '1000mcg daily or injection monthly', 'Vitamin', 'Injections needed if absorption is impaired. Common in vegetarians.');

-- ==========================================
-- TIPS
-- ==========================================

-- Viral Fever
INSERT INTO tips (condition_id, tip, priority) VALUES
(1, 'Rest is the most important medicine. Your body needs energy to fight the virus.', 1),
(1, 'Drink at least 3 liters of fluids daily - water, ORS, coconut water, soups.', 2),
(1, 'Sponge with lukewarm (not cold) water if temperature exceeds 103°F.', 3),
(1, 'Do not take antibiotics for viral fever - they only work against bacteria.', 4),
(1, 'Seek immediate medical help if fever persists beyond 5 days or goes above 104°F.', 5);

-- Common Cold
INSERT INTO tips (condition_id, tip, priority) VALUES
(2, 'Gargle with warm salt water 3-4 times daily to soothe sore throat.', 1),
(2, 'Use a humidifier or take steam inhalation to relieve congestion.', 2),
(2, 'Wash hands frequently to prevent spreading to others.', 3),
(2, 'Get adequate sleep - at least 8 hours. Sleep boosts immune function.', 4),
(2, 'Avoid cold is mostly self-limiting. See doctor if symptoms worsen after 10 days.', 5);

-- Dengue
INSERT INTO tips (condition_id, tip, priority) VALUES
(3, 'Monitor platelet count daily through blood tests during fever phase.', 1),
(3, 'NEVER take Aspirin or Ibuprofen - only Paracetamol for fever.', 2),
(3, 'Watch for warning signs: severe abdominal pain, persistent vomiting, bleeding gums.', 3),
(3, 'Stay hydrated with ORS, coconut water, and papaya leaf juice.', 4),
(3, 'Use mosquito nets and repellents to prevent further infection in household.', 5);

-- CKD
INSERT INTO tips (condition_id, tip, priority) VALUES
(5, 'Limit daily sodium intake to less than 2000mg (about 1 teaspoon of salt).', 1),
(5, 'Monitor potassium intake strictly - avoid high-potassium foods like banana, potato, tomato.', 2),
(5, 'Drink water as advised by your nephrologist - not too much, not too little.', 3),
(5, 'Get regular blood tests: creatinine, GFR, potassium, phosphorus every 1-3 months.', 4),
(5, 'Control blood pressure and diabetes strictly - they are the top causes of CKD progression.', 5),
(5, 'Avoid painkillers (NSAIDs) like Ibuprofen and Diclofenac - they damage kidneys further.', 6);

-- Kidney Stones
INSERT INTO tips (condition_id, tip, priority) VALUES
(6, 'Drink at least 3 liters of water daily to keep urine dilute and prevent stone formation.', 1),
(6, 'Reduce salt intake - high sodium increases calcium in urine.', 2),
(6, 'Limit oxalate-rich foods: spinach, beetroot, chocolate, nuts, tea.', 3),
(6, 'Add lemon juice to water daily - citrate prevents stone formation.', 4),
(6, 'Do not reduce calcium intake (common myth). Low calcium actually increases stone risk.', 5);

-- Type 2 Diabetes
INSERT INTO tips (condition_id, tip, priority) VALUES
(8, 'Walk for at least 30 minutes after dinner - it significantly reduces blood sugar spikes.', 1),
(8, 'Check HbA1c every 3 months. Target is below 7% for most patients.', 2),
(8, 'Eat meals at regular times. Skipping meals causes dangerous sugar fluctuations.', 3),
(8, 'Check feet daily for cuts, blisters, or numbness - diabetic neuropathy is common.', 4),
(8, 'Always carry fast-acting sugar (glucose tablets/candy) in case of hypoglycemia.', 5),
(8, 'Get annual eye checkup - diabetic retinopathy can cause blindness if undetected.', 6);

-- Hypertension
INSERT INTO tips (condition_id, tip, priority) VALUES
(10, 'Check blood pressure at home daily, preferably same time. Keep a log.', 1),
(10, 'Reduce salt to less than 5g per day. Avoid pickles, papad, processed foods.', 2),
(10, 'Exercise 30 minutes daily - brisk walking can reduce BP by 5-8 mmHg.', 3),
(10, 'Manage stress through deep breathing, meditation, or yoga.', 4),
(10, 'Never stop BP medication without consulting doctor even if you feel normal.', 5),
(10, 'Limit alcohol and quit smoking - both directly raise blood pressure.', 6);

-- Gastritis
INSERT INTO tips (condition_id, tip, priority) VALUES
(12, 'Eat small frequent meals (5-6 times) instead of 3 large meals.', 1),
(12, 'Do not lie down immediately after eating. Wait at least 2-3 hours.', 2),
(12, 'Avoid eating late at night. Last meal should be 3 hours before sleep.', 3),
(12, 'Manage stress - it directly increases stomach acid production.', 4),
(12, 'Quit smoking - nicotine increases acid production and damages stomach lining.', 5);

-- Anemia
INSERT INTO tips (condition_id, tip, priority) VALUES
(17, 'Take iron supplements on empty stomach with Vitamin C (lemon water/orange juice) for best absorption.', 1),
(17, 'Do not drink tea or coffee within 1 hour of iron-rich meals - tannins block absorption.', 2),
(17, 'Cook in iron vessels (cast iron pans) - food absorbs small amounts of iron.', 3),
(17, 'Include Vitamin C-rich foods with every meal to enhance iron absorption.', 4),
(17, 'Get hemoglobin checked every month until levels normalize above 12 g/dL.', 5);
