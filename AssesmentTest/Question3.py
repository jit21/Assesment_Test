# Write a program to fetch data from database to display report for a particular month,
# same as given in image above.


import sqlite3
from datetime import datetime

class ReportGenerator:
    def __init__(self, db_path):
        self.conn = sqlite3.connect(db_path)
        self.cursor = self.conn.cursor()

    def __del__(self):
        self.conn.close()

    def get_calls_statistic(self, month):
        query = f"""
            SELECT COUNT(*) 
            FROM Calls 
            WHERE strftime('%m', CallDateTime) = '{month}';
        """
        self.cursor.execute(query)
        return self.cursor.fetchone()[0]

    def get_messages_statistic(self, month):
        query = f"""
            SELECT COUNT(*) 
            FROM Messages 
            WHERE strftime('%m', MessageDateTime) = '{month}';
        """
        self.cursor.execute(query)
        return self.cursor.fetchone()[0]

    def get_direction_requests_statistic(self, month):
        query = f"""
            SELECT COUNT(*) 
            FROM DirectionRequests 
            WHERE strftime('%m', RequestDateTime) = '{month}';
        """
        self.cursor.execute(query)
        return self.cursor.fetchone()[0]

    def get_website_visits_statistic(self, month):
        query = f"""
            SELECT COUNT(*) 
            FROM WebsiteVisits 
            WHERE strftime('%m', VisitDateTime) = '{month}';
        """
        self.cursor.execute(query)
        return self.cursor.fetchone()[0]

    def get_profile_views_statistic(self, month):
        query = f"""
            SELECT COUNT(*) 
            FROM ProfileViews 
            WHERE strftime('%m', ViewDateTime) = '{month}';
        """
        self.cursor.execute(query)
        return self.cursor.fetchone()[0]

    def get_searches_appearance_statistic(self, month):
        query = f"""
            SELECT COUNT(*) 
            FROM SearchesAppearance 
            WHERE strftime('%m', AppearanceDateTime) = '{month}';
        """
        self.cursor.execute(query)
        return self.cursor.fetchone()[0]

    def generate_monthly_report(self, month):
        report = {
            'Calls': self.get_calls_statistic(month),
            'Messages': self.get_messages_statistic(month),
            'Direction Requests': self.get_direction_requests_statistic(month),
            'Website Visits': self.get_website_visits_statistic(month),
            'Profile Views': self.get_profile_views_statistic(month),
            'Searches Appearance': self.get_searches_appearance_statistic(month),
        }
        return report

def main():
    db_path = 'your_database.db'  # Replace with your actual database path
    month = '01'  # Replace with the desired month (format: MM)

    report_generator = ReportGenerator(db_path)
    monthly_report = report_generator.generate_monthly_report(month)

    print(f"Monthly Report for {datetime.strptime(month, '%m').strftime('%B')}:\n")
    for category, count in monthly_report.items():
        print(f"{category}: {count}")

if __name__ == "__main__":
    main()
