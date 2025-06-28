create function `slugify`(dirty_string varchar(255))
    returns varchar(255)
    deterministic
begin
    declare new_string varchar(255);

    set new_string = '';
    -- Replace all spaces and dots with a dash
    set dirty_string = replace(trim(replace(dirty_string, '.', '-')), ' ', '-');
    -- Convert to lowercase
    set dirty_string = lower(dirty_string);

    -- Cyrillic characters
    set dirty_string = replace(dirty_string, 'а', 'a');
    set dirty_string = replace(dirty_string, 'б', 'b');
    set dirty_string = replace(dirty_string, 'в', 'v');
    set dirty_string = replace(dirty_string, 'г', 'g');
    set dirty_string = replace(dirty_string, 'д', 'd');
    set dirty_string = replace(dirty_string, 'е', 'e');
    set dirty_string = replace(dirty_string, 'ё', 'yo');
    set dirty_string = replace(dirty_string, 'ж', 'zh');
    set dirty_string = replace(dirty_string, 'з', 'z');
    set dirty_string = replace(dirty_string, 'и', 'i');
    set dirty_string = replace(dirty_string, 'й', 'y');
    set dirty_string = replace(dirty_string, 'к', 'k');
    set dirty_string = replace(dirty_string, 'л', 'l');
    set dirty_string = replace(dirty_string, 'м', 'm');
    set dirty_string = replace(dirty_string, 'н', 'n');
    set dirty_string = replace(dirty_string, 'о', 'o');
    set dirty_string = replace(dirty_string, 'п', 'p');
    set dirty_string = replace(dirty_string, 'р', 'r');
    set dirty_string = replace(dirty_string, 'с', 's');
    set dirty_string = replace(dirty_string, 'т', 't');
    set dirty_string = replace(dirty_string, 'у', 'u');
    set dirty_string = replace(dirty_string, 'ф', 'f');
    set dirty_string = replace(dirty_string, 'х', 'kh');
    set dirty_string = replace(dirty_string, 'ц', 'ts');
    set dirty_string = replace(dirty_string, 'ч', 'ch');
    set dirty_string = replace(dirty_string, 'ш', 'sh');
    set dirty_string = replace(dirty_string, 'щ', 'shch');
    set dirty_string = replace(dirty_string, 'ъ', '');
    set dirty_string = replace(dirty_string, 'ы', 'y');
    set dirty_string = replace(dirty_string, 'ь', '');
    set dirty_string = replace(dirty_string, 'э', 'e');
    set dirty_string = replace(dirty_string, 'ю', 'yu');
    set dirty_string = replace(dirty_string, 'я', 'ya');

    -- Latin characters with diacritics (a variants)
    set dirty_string = replace(dirty_string, 'á', 'a');
    set dirty_string = replace(dirty_string, 'à', 'a');
    set dirty_string = replace(dirty_string, 'â', 'a');
    set dirty_string = replace(dirty_string, 'ä', 'a');
    set dirty_string = replace(dirty_string, 'ã', 'a');
    set dirty_string = replace(dirty_string, 'å', 'a');
    set dirty_string = replace(dirty_string, 'ā', 'a');
    set dirty_string = replace(dirty_string, 'ă', 'a');
    set dirty_string = replace(dirty_string, 'ą', 'a');
    set dirty_string = replace(dirty_string, 'æ', 'ae');

    -- Latin characters with diacritics (e variants)
    set dirty_string = replace(dirty_string, 'é', 'e');
    set dirty_string = replace(dirty_string, 'è', 'e');
    set dirty_string = replace(dirty_string, 'ê', 'e');
    set dirty_string = replace(dirty_string, 'ë', 'e');
    set dirty_string = replace(dirty_string, 'ē', 'e');
    set dirty_string = replace(dirty_string, 'ĕ', 'e');
    set dirty_string = replace(dirty_string, 'ė', 'e');
    set dirty_string = replace(dirty_string, 'ę', 'e');
    set dirty_string = replace(dirty_string, 'ě', 'e');

    -- Latin characters with diacritics (i variants)
    set dirty_string = replace(dirty_string, 'í', 'i');
    set dirty_string = replace(dirty_string, 'ì', 'i');
    set dirty_string = replace(dirty_string, 'î', 'i');
    set dirty_string = replace(dirty_string, 'ï', 'i');
    set dirty_string = replace(dirty_string, 'ī', 'i');
    set dirty_string = replace(dirty_string, 'ĭ', 'i');
    set dirty_string = replace(dirty_string, 'į', 'i');
    set dirty_string = replace(dirty_string, 'ı', 'i');

    -- Latin characters with diacritics (o variants)
    set dirty_string = replace(dirty_string, 'ó', 'o');
    set dirty_string = replace(dirty_string, 'ò', 'o');
    set dirty_string = replace(dirty_string, 'ô', 'o');
    set dirty_string = replace(dirty_string, 'ö', 'o');
    set dirty_string = replace(dirty_string, 'õ', 'o');
    set dirty_string = replace(dirty_string, 'ō', 'o');
    set dirty_string = replace(dirty_string, 'ŏ', 'o');
    set dirty_string = replace(dirty_string, 'ő', 'o');
    set dirty_string = replace(dirty_string, 'ø', 'o');
    set dirty_string = replace(dirty_string, 'œ', 'oe');

    -- Latin characters with diacritics (u variants)
    set dirty_string = replace(dirty_string, 'ú', 'u');
    set dirty_string = replace(dirty_string, 'ù', 'u');
    set dirty_string = replace(dirty_string, 'û', 'u');
    set dirty_string = replace(dirty_string, 'ü', 'u');
    set dirty_string = replace(dirty_string, 'ū', 'u');
    set dirty_string = replace(dirty_string, 'ŭ', 'u');
    set dirty_string = replace(dirty_string, 'ů', 'u');
    set dirty_string = replace(dirty_string, 'ű', 'u');
    set dirty_string = replace(dirty_string, 'ų', 'u');

    -- Latin characters with diacritics (y variants)
    set dirty_string = replace(dirty_string, 'ý', 'y');
    set dirty_string = replace(dirty_string, 'ỳ', 'y');
    set dirty_string = replace(dirty_string, 'ŷ', 'y');
    set dirty_string = replace(dirty_string, 'ÿ', 'y');
    set dirty_string = replace(dirty_string, 'ȳ', 'y');
    set dirty_string = replace(dirty_string, 'ỹ', 'y');

    -- Latin characters with diacritics (c variants)
    set dirty_string = replace(dirty_string, 'ç', 'c');
    set dirty_string = replace(dirty_string, 'ć', 'c');
    set dirty_string = replace(dirty_string, 'ĉ', 'c');
    set dirty_string = replace(dirty_string, 'ċ', 'c');
    set dirty_string = replace(dirty_string, 'č', 'c');

    -- Latin characters with diacritics (n variants)
    set dirty_string = replace(dirty_string, 'ñ', 'n');
    set dirty_string = replace(dirty_string, 'ń', 'n');
    set dirty_string = replace(dirty_string, 'ň', 'n');
    set dirty_string = replace(dirty_string, 'ņ', 'n');
    set dirty_string = replace(dirty_string, 'ŋ', 'n');

    -- Latin characters with diacritics (s variants)
    set dirty_string = replace(dirty_string, 'ś', 's');
    set dirty_string = replace(dirty_string, 'ŝ', 's');
    set dirty_string = replace(dirty_string, 'ş', 's');
    set dirty_string = replace(dirty_string, 'š', 's');
    set dirty_string = replace(dirty_string, 'ș', 's');

    -- Latin characters with diacritics (z variants)
    set dirty_string = replace(dirty_string, 'ź', 'z');
    set dirty_string = replace(dirty_string, 'ż', 'z');
    set dirty_string = replace(dirty_string, 'ž', 'z');

    -- Latin characters with diacritics (l variants)
    set dirty_string = replace(dirty_string, 'ł', 'l');
    set dirty_string = replace(dirty_string, 'ĺ', 'l');
    set dirty_string = replace(dirty_string, 'ļ', 'l');
    set dirty_string = replace(dirty_string, 'ľ', 'l');

    -- Latin characters with diacritics (r variants)
    set dirty_string = replace(dirty_string, 'ř', 'r');
    set dirty_string = replace(dirty_string, 'ŕ', 'r');
    set dirty_string = replace(dirty_string, 'ŗ', 'r');

    -- Latin characters with diacritics (t variants)
    set dirty_string = replace(dirty_string, 'ť', 't');
    set dirty_string = replace(dirty_string, 'ţ', 't');
    set dirty_string = replace(dirty_string, 'ț', 't');

    -- Latin characters with diacritics (d variants)
    set dirty_string = replace(dirty_string, 'ď', 'd');
    set dirty_string = replace(dirty_string, 'đ', 'd');
    set dirty_string = replace(dirty_string, 'ḑ', 'd');

    -- Latin characters with diacritics (g variants)
    set dirty_string = replace(dirty_string, 'ğ', 'g');
    set dirty_string = replace(dirty_string, 'ģ', 'g');
    set dirty_string = replace(dirty_string, 'ġ', 'g');

    -- Latin characters with diacritics (h variants)
    set dirty_string = replace(dirty_string, 'ĥ', 'h');
    set dirty_string = replace(dirty_string, 'ħ', 'h');

    -- Latin characters with diacritics (j, k, w variants)
    set dirty_string = replace(dirty_string, 'ĵ', 'j');
    set dirty_string = replace(dirty_string, 'ķ', 'k');
    set dirty_string = replace(dirty_string, 'ŵ', 'w');

    -- Greek characters
    set dirty_string = replace(dirty_string, 'α', 'a');
    set dirty_string = replace(dirty_string, 'β', 'b');
    set dirty_string = replace(dirty_string, 'γ', 'g');
    set dirty_string = replace(dirty_string, 'δ', 'd');
    set dirty_string = replace(dirty_string, 'ε', 'e');
    set dirty_string = replace(dirty_string, 'ζ', 'z');
    set dirty_string = replace(dirty_string, 'η', 'i');
    set dirty_string = replace(dirty_string, 'θ', 'th');
    set dirty_string = replace(dirty_string, 'ι', 'i');
    set dirty_string = replace(dirty_string, 'κ', 'k');
    set dirty_string = replace(dirty_string, 'λ', 'l');
    set dirty_string = replace(dirty_string, 'μ', 'm');
    set dirty_string = replace(dirty_string, 'ν', 'n');
    set dirty_string = replace(dirty_string, 'ξ', 'x');
    set dirty_string = replace(dirty_string, 'ο', 'o');
    set dirty_string = replace(dirty_string, 'π', 'p');
    set dirty_string = replace(dirty_string, 'ρ', 'r');
    set dirty_string = replace(dirty_string, 'σ', 's');
    set dirty_string = replace(dirty_string, 'ς', 's');
    set dirty_string = replace(dirty_string, 'τ', 't');
    set dirty_string = replace(dirty_string, 'υ', 'y');
    set dirty_string = replace(dirty_string, 'φ', 'f');
    set dirty_string = replace(dirty_string, 'χ', 'ch');
    set dirty_string = replace(dirty_string, 'ψ', 'ps');
    set dirty_string = replace(dirty_string, 'ω', 'o');

    -- Special characters
    set dirty_string = replace(dirty_string, 'ß', 'ss');
    set dirty_string = replace(dirty_string, 'þ', 'th');
    set dirty_string = replace(dirty_string, 'ð', 'd');

    -- Remove non-allowed characters (keep only a-z, 0-9, and -)
    set new_string = '';
    set @i = 1;
    while @i <= char_length(dirty_string) DO
        set @char = substring(dirty_string, @i, 1);
        if @char regexp '[a-z0-9-]' then
            set new_string = concat(new_string, @char);
        end if;
            set @i = @i + 1;
    end while;

    -- Replace multiple hyphens with a single hyphen
    while locate('--', new_string) > 0 do
        set new_string = replace(new_string, '--', '-');
    end while;

    -- Remove leading and trailing hyphens
    set new_string = trim(both '-' from new_string);

return new_string;
end;;
delimiter ;