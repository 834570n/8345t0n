class MoneyMan:
    def __init__(self, budget):
        self.budget = budget
        self.longest = 0
        for i in self.budget:
            if (len(i[0]) > self.longest):
                self.longest = len(i[0])

    def checkTotal(self, total):
        sumTotal = 0
        for i in self.budget:
            sumTotal += float(i[2])
        return float(sumTotal) == float(total)

    def checkNew(self):
        return self.budget[0][2]  == 0

    def setBudget(self, category, val):
        for i in self.budget:
            if (category.upper() == i[0].upper()):
                i[1] = val
                i[2] = val

    def displayBudget(self):
        totalSpent, totalBudget = 0, 0
        for i in self.budget:
            totalSpent += float(i[1])
            totalBudget += float(i[2])
        print(f'=== TOTAL BUDGET {totalSpent:.2f} / {totalBudget:.2f} ===')

    def displayCategory(self, category):
        for i in self.budget:
            if (category.upper() == i[0].upper()):
                spaces = (self.longest + 1 - len(i[0])) * " "
                print(f'{i[0]}{spaces}{float(i[1]):.2f} / {float(i[2]):.2f}')

    def reduceCategory(self, category, val):
        for i in self.budget:
            if (category.upper() == i[0].upper()):
                i[1] = float(i[1]) - val

    def checkCategory(self, category):
        for i in self.budget:
            if (category.upper() == i[0].upper()):
                return True
        return False

    def returnBudget(self):
        return self.budget
