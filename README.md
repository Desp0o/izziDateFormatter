
# 📅 Flexible Date Formatting Library

Effortlessly format dates in countless styles with this easy-to-use, flexible date formatting package! 🎉

Whether you need standard date formats or customized layouts, this package offers the flexibility to tailor date output to suit any project requirements. Just input your date, select from a variety of predefined formats, or define your own custom format! 💡

## 🌟 Format Options

| Parameter                     | Format                         | Example                    |
| :---------------------------- | :----------------------------- | :------------------------- |
| DD                            | dd                             | 08                         |
| EEE                           | EEE                            | Mon                        |
| EEE_MMM_dd_yyyy               | EEE, MMM dd yyyy              | Mon, Aug 08 2024           |
| EEE_MMMM                      | EEE MMMM                       | Mon August                 |
| EEEE                          | EEEE                           | Monday                     |
| EEEE_MMM_d                    | EEEE, MMM d                   | Monday, Aug 8              |
| EEEE_MMMM                     | EEEE MMMM                      | Monday August              |
| EEEE_MMMM_dd_yyyy             | EEEE, MMMM dd yyyy            | Monday, August 08 2024     |
| EEEE_dd_MM_yyyy               | EEEE dd.MM.yyyy               | Monday 08.08.2024          |
| HH_mm                         | HH:mm                          | 13:45                      |
| HH_mm_ss                      | HH:mm:ss                       | 13:45:30                   |
| HH_mm_ss_SSS                  | HH:mm:ss.SSS                  | 13:45:30.123               |
| MM                            | MM                             | 08                         |
| MM_dd_yyyy                    | MM/dd/yyyy                     | 08/08/2024                 |
| MMM                           | MMM                            | Jan                        |
| MMM_d                         | MMM d                          | Aug 8                      |
| MMM_d_yy                      | MMM d, yy                      | Aug 8, 24                  |
| MMM_dd_yyyy_HH_mm             | MMM dd, yyyy HH:mm            | Aug 08, 2024 13:45         |
| MMMM                          | MMMM                           | August                     |
| MMMM_dd_comma_yyyy            | MMMM dd, yyyy                 | August 08, 2024            |
| MMMM_dd_yyyy_at_HH_mm         | MMMM dd, yyyy 'at' HH:mm      | August 08, 2024 at 13:45   |
| MMMM_dd_yyyy_hh_mm_a          | MMMM dd, yyyy hh:mm a         | August 08, 2024 01:45 PM   |
| d_MMMM                        | d MMMM                         | 8 August                   |
| dd_MM_yyyy                    | dd.MM.yyyy                     | 08.08.2024                 |
| dd_MMM_yy_HH_mm               | dd MMM yy HH:mm               | 08 Aug 24 13:45            |
| dd_MMM_yyyy                   | dd MMM yyyy                    | 08 Aug 2024                |
| dd_MMMM_yyyy                  | dd MMMM yyyy                   | 08 August 2024             |
| h_mm_a                        | h:mm a                         | 1:45 PM                    |
| hh_mm_a                       | hh:mm a                        | 01:45 PM                   |
| hh_mm_ss_SSS                  | hh:mm:ss.SSS                  | 01:45:30.123               |
| hh_mm_ss_a                    | hh:mm:ss a                    | 01:45:30 PM                |
| mm_ss                         | mm:ss                          | 45:30                      |
| yy                            | yy                             | 24                         |
| yyyy                          | yyyy                           | 2024                       |
| yyyy_MM_dd                    | yyyy-MM-dd                     | 2024-08-08                 |
| yyyy_MM_dd_HH_mm              | yyyy-MM-dd HH:mm              | 2024-08-08 13:45           |
| yyyy_MM_dd_HH_mm_ss           | yyyy-MM-dd HH:mm:ss           | 2024-08-08 13:45:30        |
| yyyy_MM_dd_T_HH_mm_ss_Z       | yyyy-MM-dd'T'HH:mm:ssZ        | 2024-08-08T13:45:30+0000   |
| yyyy_MM_dd_T_HH_mm_ss_SSSZ    | yyyy-MM-dd'T'HH:mm:ss.SSSZ    | 2024-08-08T13:45:30.123+0000 |
| yyyyMMdd                      | yyyyMMdd                       | 20240808                   |
| yyyyMMdd_HHmmss               | yyyyMMdd_HHmmss               | 20240808_134530            |
| yyyy_dash_MM_dash_dd_HH_mm_ss_SSS | yyyy-MM-dd HH:mm:ss.SSS | 2024-08-08 13:45:30.123    |
| yyyy_slash_MM_slash_dd_HH_mm  | yyyy/MM/dd HH:mm              | 2024/08/08 13:45           |


## 📖 Usage
you just need to do: 
- 📌 Current date format: Specify the format of the date you currently have
- 🚀 Target date format: Specify the format you want to convert the date to.
- 🎨 Format options: You can select a format from the ```DateFormats``` enum or provide your own custom format string.


```swift
import izziDateFormatter

final class Foo {
    let izziDateFormatter: IzziDateFormatterProtocol

    init(izziDateFormatter: IzziDateFormatterProtocol = IzziDateFormatter()) {
        self.izziDateFormatter = izziDateFormatter
    }

    private func dateFormatted() {
        let date = izziDateFormatter.formatDate(currentDate: "yyyy-MM-dd'T'HH:mm:ssZ", format: DateFormats.EEEE_dd_MM_yyyy.rawValue)
    }

    /////// or use your format ///////

    private func dateFormatted() {
        let date = izziDateFormatter.formatDate(currentDate: "yyyy-MM-dd'T'HH:mm:ssZ", format: "EEEE MM")
    }

}

```

![Static Badge](https://img.shields.io/badge/Platforms-iOS_%7C_macOS-red) ![Static Badge](https://img.shields.io/badge/Platforms-6.0-red) 

![Static Badge](https://img.shields.io/badge/Version-1.0.0-green)




