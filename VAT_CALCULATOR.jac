class VATCalc {
    has vat_rate: float;

    def play(self: VATCalc) {
        print("VAT Calculator");

        self.vat_rate = float(input("Enter VAT rate (e.g. 16 for 16%): "));
        choice = input("Do you want to (A)dd VAT or (R)emove VAT? ").upper();

        if choice == "A" {
            net = float(input("Enter Net Price (before VAT): "));
            gross = net * (1 + self.vat_rate / 100);
            vat = gross - net;

            print(f"\nNet Price: {net}");
            print(f"Gross Price (with VAT): {gross}");
            print(f"VAT Amount: {vat}");
        }
        elif choice == "R" {
            gross = float(input("Enter Gross Price (including VAT): "));
            net = gross / (1 + self.vat_rate / 100);
            vat = gross - net;

            print(f"\nGross Price: {gross}");
            print(f"Net Price (before VAT): {net}");
            print(f"VAT Amount: {vat}");
        }
        else {
            print("Invalid choice. Please enter 'A' or 'R'.");
        }
    }
}


with entry {
    calc = VATCalc();
    calc.play();
