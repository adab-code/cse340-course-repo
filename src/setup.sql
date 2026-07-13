-- ========================================
-- Organization Table
-- ========================================
CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);


-- ========================================
-- Insert sample data: Organizations
-- ========================================
INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');


-- ========================================
-- Project Table
-- ========================================
CREATE TABLE project (
    project_id SERIAL PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    title VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (organization_id) REFERENCES organization (organization_id)
);


-- ========================================
-- Insert sample data: Projects
-- ========================================

-- Projects for BrightFuture Builders (organization_id = 1)
INSERT INTO project (organization_id, title, description, location, date)
VALUES
(1, 'Community Park Renovation', 'Help renovate the local community park by building new benches, planting trees, and painting the playground equipment.', 'Central Park, 123 Main St', '2026-08-15'),
(1, 'School Library Construction', 'Assist in building new bookshelves and reading areas for the local elementary school library.', '456 Education Blvd', '2026-09-01'),
(1, 'Habitat Home Build', 'Partner with Habitat for Humanity to build affordable housing for families in need.', '789 Hope Avenue', '2026-09-20'),
(1, 'Bridge Repair Project', 'Repair and reinforce the pedestrian bridge connecting the east and west neighborhoods.', 'River Crossing Trail', '2026-10-05'),
(1, 'Senior Center Remodel', 'Update the senior community center with new flooring, lighting, and accessible ramps.', '321 Elder Lane', '2026-10-25');

-- Projects for GreenHarvest Growers (organization_id = 2)
INSERT INTO project (organization_id, title, description, location, date)
VALUES
(2, 'Urban Garden Workshop', 'Teach community members how to start and maintain their own urban gardens with sustainable practices.', 'Community Center, 555 Green St', '2026-08-20'),
(2, 'School Garden Installation', 'Install raised garden beds and an irrigation system at the local high school for student agricultural education.', 'West High School, 888 School Rd', '2026-09-10'),
(2, 'Food Sustainability Fair', 'Organize a community fair showcasing local food producers and sustainable farming techniques.', 'City Fairgrounds, 100 Expo Dr', '2026-09-30'),
(2, 'Composting Initiative', 'Set up a community composting program to reduce food waste and create nutrient-rich soil for local gardens.', 'Recycling Center, 77 Earth Way', '2026-10-15'),
(2, 'Farmers Market Setup', 'Help organize and set up a weekly farmers market to connect local growers with the community.', 'Town Square, 200 Market St', '2026-11-01');

-- Projects for UnityServe Volunteers (organization_id = 3)
INSERT INTO project (organization_id, title, description, location, date)
VALUES
(3, 'Food Bank Distribution Day', 'Sort and distribute food packages to families in need at the regional food bank.', 'Food Bank Warehouse, 400 Charity Dr', '2026-08-25'),
(3, 'Homeless Shelter Meal Service', 'Prepare and serve warm meals to residents at the downtown homeless shelter.', 'Hope Shelter, 150 Compassion Ave', '2026-09-15'),
(3, 'Clothing Drive Organization', 'Collect, sort, and organize donated clothing for distribution to low-income families.', 'Community Closet, 88 Giving Lane', '2026-10-01'),
(3, 'Senior Companion Program', 'Visit and spend quality time with elderly residents at the assisted living facility.', 'Sunset Assisted Living, 600 Care Blvd', '2026-10-20'),
(3, 'Youth Mentorship Kickoff', 'Launch a mentorship program pairing volunteers with at-risk youth for academic and career guidance.', 'Youth Center, 350 Future Rd', '2026-11-10');


-- Verify data insertion
SELECT * FROM organization;
SELECT * FROM project;