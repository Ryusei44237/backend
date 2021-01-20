package base64;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Scanner;

public class Encryption {
	static Scanner scanner = new Scanner(System.in);
public static void main(String[] args) throws Exception {

	 //エンコード対象の文字列
    String source = scanner.nextLine();
    //エンコード対象の文字列をbyte配列にする際に、以下の文字コードの文字列とみなす
    Charset charset = StandardCharsets.UTF_8;

    //エンコード実行
    String result = Base64.getEncoder().encodeToString(source.getBytes(charset));

    System.out.println("エンコード結果：" + result);
}
}
