Data Dictionary – Customer Churn Dataset

This document describes all variables used in the Customer Churn Analytics project.
The dataset contains customer demographic information, account details, service usage, and billing data.
The target variable is Churn.

CustomerID
Description: Unique identifier for each customer
Type: Categorical (ID)
Example: 7590-VHVEG

gender
Description: Gender of the customer
Type: Categorical
Values: Male, Female

SeniorCitizen
Description: Indicates whether the customer is a senior citizen
Type: Binary (numeric)
Values: 1 = Yes, 0 = No

Partner
Description: Whether the customer has a partner
Type: Categorical
Values: Yes, No

Dependents
Description: Whether the customer has dependents
Type: Categorical
Values: Yes, No

tenure
Description: Number of months the customer has stayed with the company
Type: Numeric (integer)
Unit: Months

PhoneService
Description: Whether the customer has phone service
Type: Categorical
Values: Yes, No

MultipleLines
Description: Whether the customer has multiple phone lines
Type: Categorical
Values: Yes, No, No phone service

InternetService
Description: Type of internet service used by the customer
Type: Categorical
Values: DSL, Fiber optic, No

OnlineSecurity
Description: Whether the customer has online security service
Type: Categorical
Values: Yes, No, No internet service

OnlineBackup
Description: Whether the customer has online backup service
Type: Categorical
Values: Yes, No, No internet service

DeviceProtection
Description: Whether the customer has device protection service
Type: Categorical
Values: Yes, No, No internet service

TechSupport
Description: Whether the customer has technical support service
Type: Categorical
Values: Yes, No, No internet service

StreamingTV
Description: Whether the customer has streaming TV service
Type: Categorical
Values: Yes, No, No internet service

StreamingMovies
Description: Whether the customer has streaming movies service
Type: Categorical
Values: Yes, No, No internet service

Contract
Description: Type of customer contract
Type: Categorical
Values: Month-to-month, One year, Two year

PaperlessBilling
Description: Whether the customer uses paperless billing
Type: Categorical
Values: Yes, No

PaymentMethod
Description: Method used by the customer to pay bills
Type: Categorical
Values: Electronic check, Mailed check, Bank transfer (automatic), Credit card (automatic)

MonthlyCharges
Description: Monthly amount charged to the customer
Type: Numeric (float)
Unit: Currency

TotalCharges
Description: Total amount charged to the customer over their tenure
Type: Numeric (float)
Unit: Currency

Churn
Description: Indicates whether the customer has left the company
Type: Binary (numeric)
Values: 1 = Yes (Churned), 0 = No (Retained)

Derived Variables (Created During Analysis)

Tenure Group
Description: Grouped version of tenure for analysis and dashboard visualization
Type: Categorical
Values: 0–12, 13–24, 25–36, 37–48, 49+

Charges Group
Description: Grouped version of monthly charges for analysis and dashboard visualization
Type: Categorical
Values: Low, Medium, High

Notes

Categorical variables were encoded during the modeling phase using one-hot encoding.

The processed dataset is used for modeling, while the cleaned but unencoded dataset is used for dashboard visualization.

Missing values were handled during preprocessing before analysis and modeling.