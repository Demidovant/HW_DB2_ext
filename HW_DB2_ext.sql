CREATE TABLE IF NOT EXISTS departments (
	department_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS emploeeys (
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	department INT NOT NULL REFERENCES departments(department_id),
	chief INT REFERENCES emploeeys(employee_id)
);