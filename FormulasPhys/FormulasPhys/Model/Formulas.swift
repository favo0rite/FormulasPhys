//
//  Formulas.swift
//  FormulasPhys
//
//  Created by out-zamotaev-pk on 28.07.2021.
//

class Formulas {

	static let allFormulas = [
		Formula(title: "Расстояние в равномерном движении", formula: "S=υt"),
		Formula(title: "Квадрат времени падения тела без начальной скорости", formula: "t²=2h/g"),
		Formula(title: "Определение периода вращения при равномерном движении по окружности", formula: "T=t/N"),
		Formula(title: "Определение ускорения при равноускоренном движении", formula: "a=υ-υ₀/t"),
		Formula(title: "Перемещение при равноускоренном прямолинейном движении", formula: "S=(υ+υ₀)t/2"),
		Formula(title: "Перемещение при равноускоренном прямолинейном движении(без t)", formula: "S=υ²-υ₀²/2a"),
		Formula(title: "Связь между линейной и угловой скоростями", formula: "υ=ωR"),
		Formula(title: "Квадрат скорости, с которой упадет тело без начальной скорости", formula: "υ²=2gh"),
		Formula(title: "Угловая скорость(зависимость от периода колебаний)", formula: "ω=2π/T"),
		Formula(title: "Угловая скорость(зависимость от угла поворота)", formula: "ω=φ/t"),
		Formula(title: "Формула для тормозного пути тела", formula: "S=υ₀²/2a"),
		Formula(title: "Центростремительное ускорение(зависимость от радиуса и скорости)", formula: "a=υ²/R"),
		Formula(title: "Центростремительное ускорение(зависимость от радиуса и угловой скорости)", formula: "a=ω²R"),
		Formula(title: "Центростремительное ускорение(зависимость от скорости и угловой скорости)", formula: "a=υω"),
		Formula(title: "Второй закон Ньютона", formula: "F=ma"),
		Formula(title: "Второй закон Ньютона в импульсной форме", formula: "F=Δp/Δt"),
		Formula(title: "Закон всемирного тяготения", formula: "F=Gm₁m₂/R²"),
		Formula(title: "Импульс тела", formula: "p=mυ"),
		Formula(title: "Квадрат первой космической скорости", formula: "υ²=gR"),
		Formula(title: "Сила трения", formula: "F=μN"),
		Formula(title: "Сила упругости", formula: "F=kx"),
		Formula(title: "Квадрат скорости спутника на круговой орбите", formula: "υ²=GM/R+h"),
		Formula(title: "Ускорение свободного падения на некоторой высоте от поверхности", formula: "g=GM/(R+h)²"),
		Formula(title: "Момент инерции", formula: "j=mr²"),
		Formula(title: "Момент силы", formula: "M=Fd"),
		Formula(title: "Давление", formula: "p=F/S"),
		Formula(title: "Давление столба жидкости", formula: "p=ρgh"),
		Formula(title: "Сила Архимеда", formula: "F=ρgV"),
		Formula(title: "Мнгновенная механическая мощность", formula: "N=Fυcosα"),
		Formula(title: "Механическая работа", formula: "A=FScosα"),
		Formula(title: "Общая формула для мощности", formula: "N=A/t"),
	  Formula(title: "Полная механическая энергия", formula: "E=Eₖ+Eₚ"),
		Formula(title: "Потенциальная энергия растянутой(или сжатой) пружины", formula: "Eₚ=kx²/2"),
		Formula(title: "Потенциальная энергия тела поднятого на высоту", formula: "Eₚ=mgh"),
		Formula(title: "Теорема об изменении кинетической энергии", formula: "А=Eₖ₂-Eₖ₁"),
	   Formula(title: "Формула кинетической энергии", formula: "Eₖ=mυ²/2"),
		Formula(title: "Давление идеального газа(в зависимости от энергии)", formula: "p=2nE/3"),
		Formula(title: "Давление идеального газа(в зависимости от температуры)", formula: "p=nkT"),
		Formula(title: "Закон Бойля-Мариотта(T = const)", formula: "const=pV"),
		Formula(title: "Закон Гей-Люссака(p = const)", formula: "const=V/T"),
		Formula(title: "Закон Шарля (V = const)", formula: "const=p/T"),
		Formula(title: "Количество вещества", formula: "ν=m/M"),
		Formula(title: "Концентрация", formula: "n=N/V"),
		Formula(title: "Масса одной молекулы", formula: "m₀=m/N"),
		Formula(title: "Молярная масса вещества", formula: "M=m₀Nₐ"),
		Formula(title: "Основное уравнение молекулярно-кинетической теории", formula: "p=nm₀υ²/3"),
		Formula(title: "Связь давления пара с плотностью пара", formula: "p=ρRT/M"),
		Formula(title: "Связь массы, плотности и объема", formula: "m=pV"),
		Formula(title: "Квадрат средней квадратичной скорости(зависимость от массы одной молекулы)", formula: "υ²=3kT/m₀"),
		Formula(title: "Квадрат средней квадратичной скорости(зависимость от молярной массы)", formula: "υ²=3RT/M"),
		Formula(title: "Квадрат средней квадратичной скорости(зависимость от давления и количества вещества)", formula: "υ²=3p/ρ"),
		Formula(title: "Средняя кинетическая энергия молекул(зависимость от температуры)", formula: "E=3kT/2"),
		Formula(title: "Средняя кинетическая энергия молекул", formula: "E=m₀υ²/2"),
		Formula(title: "Универсальный газовый закон(Клапейрона)", formula: "const=pV/T"),
		Formula(title: "Уравнение Менделеева - Клапейрона", formula: "pV=νRT"),
		Formula(title: "Число молекул", formula: "N=νNₐ"),
		Formula(title: "Плотность водяных паров", formula: "ρ=pM/RT"),
		Formula(title: "Внутренняя энерги идеального двухатомного газа", formula: "U=5νRT/2"),
		Formula(title: "Внутренняя энергия идеального одноатомного газа", formula: "U=3νRT/2"),
		Formula(title: "КПД тепловой машины(зависимость через теплоту)", formula: "η=Q₁-Q₂/Q₁"),
		Formula(title: "КПД тепловой машины(зависимость через температуру)", formula: "η=T₁-T₂/T₁"),
		Formula(title: "КПД тепловой машины(зависимость через работу)", formula: "η=A/Q"),
		Formula(title: "Количество теплоты парообразования", formula: "Q=Lm"),
		Formula(title: "Количество теплоты плавления", formula: "Q=λm"),
		Formula(title: "Количество теплоты при нагревании", formula: "Q=cmΔt"),
		Formula(title: "Количество теплоты сгорания", formula: "Q=qm"),
		Formula(title: "Относительная влажность воздуха", formula: "φ=p/p₀"),
		Formula(title: "Первый закон(первое начало) термодинамики", formula: "Q=ΔU+A"),
		Formula(title: "Работа идеального газа", formula: "A=pΔV"),
		Formula(title: "Закон Кулона", formula: "F=k|q₁q₂|/r²"),
		Formula(title: "Напряженность создаваемая пластиной", formula: "E=|q|/2ε₀S"),
		Formula(title: "Напряженность электрического поля", formula: "E=F/q"),
		Formula(title: "Поле точеченого заряда", formula: "E=k|q|/r²"),
		Formula(title: "Потенциал точечного заряда", formula: "φ=kq/r"),
		Formula(title: "Потенциал электрического поля", formula: "φ=W/q"),
		Formula(title: "Потенциальная энергия заряда в электростатическом поле", formula: "W=qφ"),
		Formula(title: "Работа электростатического поля(через напряженность)", formula: "A=qEΔd"),
		Formula(title: "Работа электростатического поля(через напряжение)", formula: "A=qU"),
		Formula(title: "Работа электростатического поля(через потенциальную энергию)", formula: "A=Wₚ₁-Wₚ₂"),
		Formula(title: "Разность потенциалов(напряжение)", formula: "U=φ₁-φ₂"),
		Formula(title: "Связь напряженности с разностью потенциалов", formula: "E=U/d"),
		Formula(title: "Сила, с которой действует электрическое поле на точечный заряд", formula: "F=qE"),
		Formula(title: "Электроемкость конденсатора(через заряд)", formula: "C=q/U"),
		Formula(title: "Электроемкость конденсатора(через ε)", formula: "C=εε₀S/d"),
		Formula(title: "Энергия заряженного конденсатора(через напряженность)", formula: "W=qEd/2"),
		Formula(title: "Энергия заряженного конденсатора(через заряд и напряжение)", formula: "W=qU/2"),
		Formula(title: "Энергия заряженного конденсатора(через электроемкость)", formula: "W=CU²/2"),
		Formula(title: "Энергия заряженного конденсатора(через квадрат заряда)", formula: "W=q²/2C"),
		Formula(title: "Закон Джоуля - Ленца", formula: "Q=I²Rt"),
		Formula(title: "Закон Ома для полной цепи", formula: "I=ε/R+r"),
		Formula(title: "Закорн Ома для участка цепи", formula: "I=U/R"),
		Formula(title: "Мощность постоянного тока(через сопротивление)", formula: "P=U²/R"),
		Formula(title: "Мощность постоянного тока(через силу тока)", formula: "P=IU"),
		Formula(title: "Мощность постоянного тока(через квадрат силы тока)", formula: "P=I²R"),
		Formula(title: "Работа постоянного тока", formula: "A=Pt"),
		Formula(title: "Сила тока", formula: "I=q/t"),
		Formula(title: "Сопротивление проводника", formula: "R=ρl/S"),
		Formula(title: "Закон электромагниной индукции Фарадея", formula: "ε=-Δφ/Δt"),
		Formula(title: "Индуктивность", formula: "L=Ф/I"),
		Formula(title: "Магнитный поток", formula: "Ф=BScosα"),
		Formula(title: "Сила Ампера", formula: "F=BIlsinα"),
		Formula(title: "Сила Лоренца", formula: "F=qυBsinα"),
		Formula(title: "Эдс индукции в движущемся проводнике", formula: "ε=Blυsinα"),
		Formula(title: "Эдс самоиндукции", formula: "ε=-LΔI/Δt"),
		Formula(title: "Энергия магнитного поля", formula: "W=LI²/2"),
		Formula(title: "Длина волны", formula: "λ=υT"),
		Formula(title: "Период колебаний", formula: "T=1/ν"),
		Formula(title: "Циклическая частота колебаний", formula: "ω=2πν"),
		Formula(title: "Квадрат циклической частоты колебаний математического маятника", formula: "ω²=g/l"),
		Formula(title: "Циклическая частота колебаний пружинного маятника", formula: "ω²=k/m"),
		Formula(title: "Емкостное сопротивление", formula: "X=1/ωC"),
		Formula(title: "Индуктивное сопротивление", formula: "X=ωL"),
		Formula(title: "Циклическая частота колебаний", formula: "ω=2π/T"),
		Formula(title: "Емкостное сопротивление", formula: "X=1/ωC"),
		Formula(title: "Индуктивное сопротивление", formula: "X=ωL"),
		Formula(title: "Энергия электрического поля", formula: "W=q²/2C"),
		Formula(title: "Абсолютный показатель преломления среды", formula: "n=c/υ"),
		Formula(title: "Оптическая сила линзы", formula: "D=1/F"),
		Formula(title: "Увеличение линзы(через f)", formula: "Г=f/d"),
		Formula(title: "Увеличение линзы(через H)", formula: "Г=H/h"),
		Formula(title: "Условие интерференционного максимума", formula: "Δ=kλ"),
		Formula(title: "Условие интерференционного минимума", formula: "Δ=(2k+1)λ/2"),
		Formula(title: "Формула дифракционной решетки", formula: "kλ=dsinφ"),
		Formula(title: "Ширина интерференционной полосы", formula: "Ω=λL/d"),
		Formula(title: "Импульс фотона(через длину волны)", formula: "p=hν/c"),
		Formula(title: "Импульс фотона(через скорость света)", formula: "p=h/λ"),
		Formula(title: "Импульс фотоэлектрона", formula: "p₀=mₑυ"),
		Formula(title: "Интенсивность излучения", formula: "I=N/S"),
		Formula(title: "Красная граница фотоэффекта(через работу)", formula: "ν=A/h"),
		Formula(title: "Красная граница фотоэффекта(через скорость света)", formula: "ν=c/λ"),
		Formula(title: "Максимальное значение кинетической энергии электронов", formula: "Eₖ=eU₃"),
		Formula(title: "Мощность излучения", formula: "N=W/Δt"),
		Formula(title: "Скорость фотона", formula: "υ=νλ"),
		Formula(title: "Форплунка Планка", formula: "E=hν"),
		Formula(title: "Формула де Бройля", formula: "λ=h/p"),
		Formula(title: "Энергия излучения", formula: "W=nE"),
		Formula(title: "Энергия фотона(второй постулат Бора)", formula: "hν=E₂-E₁"),
		Formula(title: "Высота подъема жидкости в капилляре", formula: "h=2σ/ρgr"),
		Formula(title: "Закон Гука", formula: "σ=E|ε|"),
		Formula(title: "Механическое напряжение", formula: "σ=F/S"),
		Formula(title: "Относительное удличение", formula: "ε=l-l₀/l₀"),
		Formula(title: "Поверхностная энергия", formula: "E=σS"),
		Formula(title: "Сила поверхностного натяжения жидкости", formula: "F=σl"),
	]

    struct Kinematics {
        public static let symbols = ["S","N","a",")","T","υ","t","₀","(","ω","2", "φ", "π", "R", "²", "g", "+"]

       static let formulas: [Formula] = [
            Formula(title: "Расстояние в равномерном движении", formula: "S=υt"),
            Formula(title: "Квадрат времени падения тела без начальной скорости", formula: "t²=2h/g"),
            Formula(title: "Определение периода вращения при равномерном движении по окружности", formula: "T=t/N"),
            Formula(title: "Определение ускорения при равноускоренном движении", formula: "a=υ-υ₀/t"),
            Formula(title: "Перемещение при равноускоренном прямолинейном движении", formula: "S=(υ+υ₀)t/2"),
            Formula(title: "Перемещение при равноускоренном прямолинейном движении(без t)", formula: "S=υ²-υ₀²/2a"),
            Formula(title: "Связь между линейной и угловой скоростями", formula: "υ=ωR"),
            Formula(title: "Квадрат скорости, с которой упадет тело без начальной скорости", formula: "υ²=2gh"),
            Formula(title: "Угловая скорость(зависимость от периода колебаний)", formula: "ω=2π/T"),
            Formula(title: "Угловая скорость(зависимость от угла поворота)", formula: "ω=φ/t"),
            Formula(title: "Формула для тормозного пути тела", formula: "S=υ₀²/2a"),
            Formula(title: "Центростремительное ускорение(зависимость от радиуса и скорости)", formula: "a=υ²/R"),
            Formula(title: "Центростремительное ускорение(зависимость от радиуса и угловой скорости)", formula: "a=ω²R"),
            Formula(title: "Центростремительное ускорение(зависимость от скорости и угловой скорости)", formula: "a=υω"),
        ]
    }

    struct Dynamics {
        public static let symbols = ["F", "m", "a", "Δ", "p", "t", "G", "m", "₁", "₂", "p", "μ", "k", "x", "g", "M", "R", "h", "+", "²"]
        
        static let formulas: [Formula] = [
            Formula(title: "Второй закон Ньютона", formula: "F=ma"),
            Formula(title: "Второй закон Ньютона в импульсной форме", formula: "F=Δp/Δt"),
            Formula(title: "Закон всемирного тяготения", formula: "F=Gm₁m₂/R²"),
            Formula(title: "Импульс тела", formula: "p=mυ"),
            Formula(title: "Квадрат первой космической скорости", formula: "υ²=gR"),
            Formula(title: "Сила трения", formula: "F=μN"),
            Formula(title: "Сила упругости", formula: "F=kx"),
            Formula(title: "Квадрат скорости спутника на круговой орбите", formula: "υ²=GM/R+h"),
            Formula(title: "Ускорение свободного падения на некоторой высоте от поверхности", formula: "g=GM/(R+h)²"),
        ]
    }

    struct Static {
        public static let symbols = ["j","F","r","d","T","υ","M","₀","(","ω","2", "φ", "π", "R", "²", "g"]
        
        static let formulas: [Formula] = [
            Formula(title: "Момент инерции", formula: "j=mr²"),
            Formula(title: "Момент силы", formula: "M=Fd"),
        ]
    }

    struct Hydrostatics {
        public static let symbols = ["j","F","r","d","T","υ","M","₀","p","ω","2", "φ", "h", "R", "S", "V"]
        
        static let formulas: [Formula] = [
            Formula(title: "Давление", formula: "p=F/S"),
            Formula(title: "Давление столба жидкости", formula: "p=ρgh"),
            Formula(title: "Сила Архимеда", formula: "F=ρgV"),
        ]
    }


    struct WorkPowerEnergy {
        public static let symbols = ["cosα","N","cosα","A","F","υ","t","₀","ₖ","ₚ","2", "φ", "N", "R", "sinα", "cosα"]
        
        static let formulas: [Formula] = [
            Formula(title: "Мнгновенная механическая мощность", formula: "N=Fυcosα"),
            Formula(title: "Механическая работа", formula: "A=FScosα"),
            Formula(title: "Общая формула для мощности", formula: "N=A/t"),
          Formula(title: "Полная механическая энергия", formula: "E=Eₖ+Eₚ"),
            Formula(title: "Потенциальная энергия растянутой(или сжатой) пружины", formula: "Eₚ=kx²/2"),
            Formula(title: "Потенциальная энергия тела поднятого на высоту", formula: "Eₚ=mgh"),
            Formula(title: "Теорема об изменении кинетической энергии", formula: "А=Eₖ₂-Eₖ₁"),
           Formula(title: "Формула кинетической энергии", formula: "Eₖ=mυ²/2"),
        ]
    }

    struct MolecularPhysics {
        public static let symbols = ["S","N","a",")","T","υ","t","₀","(","ω","2", "φ", "π", "R", "²", "const"]
        
        static let formulas: [Formula] = [
            Formula(title: "Давление идеального газа(в зависимости от энергии)", formula: "p=2nE/3"),
            Formula(title: "Давление идеального газа(в зависимости от температуры)", formula: "p=nkT"),
            Formula(title: "Закон Бойля-Мариотта(T = const)", formula: "const=pV"),
            Formula(title: "Закон Гей-Люссака(p = const)", formula: "const=V/T"),
            Formula(title: "Закон Шарля (V = const)", formula: "const=p/T"),
            Formula(title: "Количество вещества", formula: "ν=m/M"),
            Formula(title: "Концентрация", formula: "n=N/V"),
            Formula(title: "Масса одной молекулы", formula: "m₀=m/N"),
            Formula(title: "Молярная масса вещества", formula: "M=m₀Nₐ"),
            Formula(title: "Основное уравнение молекулярно-кинетической теории", formula: "p=nm₀υ²/3"),
            Formula(title: "Связь давления пара с плотностью пара", formula: "p=ρRT/M"),
            Formula(title: "Связь массы, плотности и объема", formula: "m=pV"),
            Formula(title: "Квадрат средней квадратичной скорости(зависимость от массы одной молекулы)", formula: "υ²=3kT/m₀"),
            Formula(title: "Квадрат средней квадратичной скорости(зависимость от молярной массы)", formula: "υ²=3RT/M"),
            Formula(title: "Квадрат средней квадратичной скорости(зависимость от давления и количества вещества)", formula: "υ²=3p/ρ"),
            Formula(title: "Средняя кинетическая энергия молекул(зависимость от температуры)", formula: "E=3kT/2"),
            Formula(title: "Средняя кинетическая энергия молекул", formula: "E=m₀υ²/2"),
            Formula(title: "Универсальный газовый закон(Клапейрона)", formula: "const=pV/T"),
            Formula(title: "Уравнение Менделеева - Клапейрона", formula: "pV=νRT"),
            Formula(title: "Число молекул", formula: "N=νNₐ"),
            Formula(title: "Плотность водяных паров", formula: "ρ=pM/RT"),
        ]
    }

    struct Thermodynamics {
        public static let symbols = ["ν","N","a","₀","T","υ","q","λ","L","m","2", "η", "A", "Q", "2", "T"]
        
        static let formulas: [Formula] = [
            Formula(title: "Внутренняя энерги идеального двухатомного газа", formula: "U=5νRT/2"),
            Formula(title: "Внутренняя энергия идеального одноатомного газа", formula: "U=3νRT/2"),
            Formula(title: "КПД тепловой машины(зависимость через теплоту)", formula: "η=Q₁-Q₂/Q₁"),
            Formula(title: "КПД тепловой машины(зависимость через температуру)", formula: "η=T₁-T₂/T₁"),
            Formula(title: "КПД тепловой машины(зависимость через работу)", formula: "η=A/Q"),
            Formula(title: "Количество теплоты парообразования", formula: "Q=Lm"),
            Formula(title: "Количество теплоты плавления", formula: "Q=λm"),
            Formula(title: "Количество теплоты при нагревании", formula: "Q=cmΔt"),
            Formula(title: "Количество теплоты сгорания", formula: "Q=qm"),
            Formula(title: "Относительная влажность воздуха", formula: "φ=p/p₀"),
            Formula(title: "Первый закон(первое начало) термодинамики", formula: "Q=ΔU+A"),
            Formula(title: "Работа идеального газа", formula: "A=pΔV"),
        ]
    }

    struct Electrostatics {
        public static let symbols = ["S","N","a","q","T","d","t","₀","U","ₚ","2", "φ", "E", "W", "²", "φ"]
        
        static let formulas: [Formula] = [
            Formula(title: "Закон Кулона", formula: "F=k|q₁q₂|/r²"),
            Formula(title: "Напряженность создаваемая пластиной", formula: "E=|q|/2ε₀S"),
            Formula(title: "Напряженность электрического поля", formula: "E=F/q"),
            Formula(title: "Поле точеченого заряда", formula: "E=k|q|/r²"),
            Formula(title: "Потенциал точечного заряда", formula: "φ=kq/r"),
            Formula(title: "Потенциал электрического поля", formula: "φ=W/q"),
            Formula(title: "Потенциальная энергия заряда в электростатическом поле", formula: "W=qφ"),
            Formula(title: "Работа электростатического поля(через напряженность)", formula: "A=qEΔd"),
            Formula(title: "Работа электростатического поля(через напряжение)", formula: "A=qU"),
            Formula(title: "Работа электростатического поля(через потенциальную энергию)", formula: "A=Wₚ₁-Wₚ₂"),
            Formula(title: "Разность потенциалов(напряжение)", formula: "U=φ₁-φ₂"),
            Formula(title: "Связь напряженности с разностью потенциалов", formula: "E=U/d"),
            Formula(title: "Сила, с которой действует электрическое поле на точечный заряд", formula: "F=qE"),
            Formula(title: "Электроемкость конденсатора(через заряд)", formula: "C=q/U"),
            Formula(title: "Электроемкость конденсатора(через ε)", formula: "C=εε₀S/d"),
            Formula(title: "Энергия заряженного конденсатора(через напряженность)", formula: "W=qEd/2"),
            Formula(title: "Энергия заряженного конденсатора(через заряд и напряжение)", formula: "W=qU/2"),
            Formula(title: "Энергия заряженного конденсатора(через электроемкость)", formula: "W=CU²/2"),
            Formula(title: "Энергия заряженного конденсатора(через квадрат заряда)", formula: "W=q²/2C"),
        ]
    }

    struct LawsDirectCurrent {
        public static let symbols = ["S","N","a",")","T","ρ","S","P","U","r","2", "φ", "Q", "ε", "I", "R"]

       static let formulas: [Formula] = [
        Formula(title: "Закон Джоуля - Ленца", formula: "Q=I²Rt"),
        Formula(title: "Закон Ома для полной цепи", formula: "I=ε/R+r"),
        Formula(title: "Закорн Ома для участка цепи", formula: "I=U/R"),
        Formula(title: "Мощность постоянного тока(через сопротивление)", formula: "P=U²/R"),
        Formula(title: "Мощность постоянного тока(через силу тока)", formula: "P=IU"),
        Formula(title: "Мощность постоянного тока(через квадрат силы тока)", formula: "P=I²R"),
        Formula(title: "Работа постоянного тока", formula: "A=Pt"),
        Formula(title: "Сила тока", formula: "I=q/t"),
        Formula(title: "Сопротивление проводника", formula: "R=ρl/S"),
        ]
    }

    struct MagneticFieldAndElectromagneticInduction {
        public static let symbols = ["S","N","a",")","T","υ","t","B","|","Δ","S", "φ", "I", "t", "cosα", "sinα"]
        
        static let formulas: [Formula] = [
            Formula(title: "Закон электромагниной индукции Фарадея", formula: "ε=-Δφ/Δt"),
            Formula(title: "Индуктивность", formula: "L=Ф/I"),
            Formula(title: "Магнитный поток", formula: "Ф=BScosα"),
            Formula(title: "Сила Ампера", formula: "F=BIlsinα"),
            Formula(title: "Сила Лоренца", formula: "F=qυBsinα"),
            Formula(title: "Эдс индукции в движущемся проводнике", formula: "ε=Blυsinα"),
            Formula(title: "Эдс самоиндукции", formula: "ε=-LΔI/Δt"),
            Formula(title: "Энергия магнитного поля", formula: "W=LI²/2"),
        ]
    }

    struct MechanicaVibrationsAndWaves {
        public static let symbols = ["S","N","a",")","T","υ","t","₀","l","ω","2", "φ", "k", "m", "ω", "λ"]
        
        static let formulas: [Formula] = [
            Formula(title: "Длина волны", formula: "λ=υT"),
            Formula(title: "Период колебаний", formula: "T=1/ν"),
            Formula(title: "Циклическая частота колебаний", formula: "ω=2πν"),
            Formula(title: "Квадрат циклической частоты колебаний математического маятника", formula: "ω²=g/l"),
            Formula(title: "Циклическая частота колебаний пружинного маятника", formula: "ω²=k/m"),
        ]
    }

    struct ElectromagneticVibrationsAndWaves {
        public static let symbols = ["S","N","a",")","T","υ","t","₀","W","ω","2", "q", "π", "L", "X", "C"]
        
        static let formulas: [Formula] = [
            Formula(title: "Емкостное сопротивление", formula: "X=1/ωC"),
            Formula(title: "Индуктивное сопротивление", formula: "X=ωL"),
            Formula(title: "Циклическая частота колебаний", formula: "ω=2π/T"),
			Formula(title: "Энергия магнитного поля", formula: "W=LI²/2"),
            Formula(title: "Энергия электрического поля", formula: "W=q²/2C"),
        ]
    }

    struct Optics {
        public static let symbols = ["S","N","a",")","T","υ","t","H","Δ","Ω","λ", "υ", "c", "F", "Г", "sinφ"]
        
        static let formulas: [Formula] = [
            Formula(title: "Абсолютный показатель преломления среды", formula: "n=c/υ"),
            Formula(title: "Оптическая сила линзы", formula: "D=1/F"),
            Formula(title: "Увеличение линзы(через f)", formula: "Г=f/d"),
            Formula(title: "Увеличение линзы(через H)", formula: "Г=H/h"),
            Formula(title: "Условие интерференционного максимума", formula: "Δ=kλ"),
            Formula(title: "Условие интерференционного минимума", formula: "Δ=(2k+1)λ/2"),
            Formula(title: "Формула дифракционной решетки", formula: "kλ=dsinφ"),
            Formula(title: "Ширина интерференционной полосы", formula: "Ω=λL/d"),
        ]
    }

    struct QuantumPhysics {
        public static let symbols = ["S","N","a",")","T","υ","t","₀","h","E","e", "λ", "A", "p", "ν", "c"]
        
        static let formulas: [Formula] = [
            Formula(title: "Импульс фотона(через длину волны)", formula: "p=hν/c"),
            Formula(title: "Импульс фотона(через скорость света)", formula: "p=h/λ"),
            Formula(title: "Импульс фотоэлектрона", formula: "p₀=mₑυ"),
            Formula(title: "Интенсивность излучения", formula: "I=N/S"),
            Formula(title: "Красная граница фотоэффекта(через работу)", formula: "ν=A/h"),
            Formula(title: "Красная граница фотоэффекта(через скорость света)", formula: "ν=c/λ"),
            Formula(title: "Максимальное значение кинетической энергии электронов", formula: "Eₖ=eU₃"),
            Formula(title: "Мощность излучения", formula: "N=W/Δt"),
            Formula(title: "Скорость фотона", formula: "υ=νλ"),
            Formula(title: "Форплунка Планка", formula: "E=hν"),
            Formula(title: "Формула де Бройля", formula: "λ=h/p"),
            Formula(title: "Энергия излучения", formula: "W=nE"),
            Formula(title: "Энергия фотона(второй постулат Бора)", formula: "hν=E₂-E₁"),
        ]
    }

    struct PropertiesSteamLiquidsAndSolids {
        public static let symbols = ["S","N","a",")","T","υ","t","₀","(","ρ","2", "φ", "F", "R", "l", "σ"]
        
        static let formulas: [Formula] = [
            Formula(title: "Высота подъема жидкости в капилляре", formula: "h=2σ/ρgr"),
            Formula(title: "Закон Гука", formula: "σ=E|ε|"),
            Formula(title: "Механическое напряжение", formula: "σ=F/S"),
            Formula(title: "Относительное удличение", formula: "ε=l-l₀/l₀"),
            Formula(title: "Поверхностная энергия", formula: "E=σS"),
            Formula(title: "Сила поверхностного натяжения жидкости", formula: "F=σl"),
        ]
    }
}
