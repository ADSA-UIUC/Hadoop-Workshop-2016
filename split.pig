info = LOAD '/user/root/split_text.txt' AS (name:chararray, gender:chararray, salary:int);
SPLIT info INTO female_info IF gender=='F', male_info IF gender=='M';
STORE female_info INTO './f_info';
STORE male_info INTO './m_info';

SPLIT info INTO high_salary IF salary > 1000, low_salary IF salary <= 1000;
STORE high_salary INTO './high_sal';
STORE low_salary INTO './low_sal';
