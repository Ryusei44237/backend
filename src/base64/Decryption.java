package base64;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Scanner;

public class Decryption {
	static Scanner scanner = new Scanner(System.in);
public static void main(String[] args) throws Exception {

	//デコード対象の文字列
    String source = scanner.nextLine();
    //デコードしたbyte配列を文字列に置き換える際に使用する文字コード（エンコード時と同じものを指定する）
    Charset charset = StandardCharsets.UTF_8;

    //デコード実行
    byte[] decoded = Base64.getDecoder().decode(source);
    String result = new String(decoded, charset);

    System.out.println("デコード結果：" + result);
    }
}
