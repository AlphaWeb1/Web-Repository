package optimization;

public class SimplexTest {

    private Integer off() {
        Integer exit = confirm("This Application is About to Exit\n Press Yes to Confirm Exit of No to Revert", "Exit?", qm);
        if (exit == yes) {
            try {
                Thread.sleep(4000);
                System.exit(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            return 0;
        }
        return 0;
    }

    private Integer confirm(String message, String title, Integer ic) {
        return jp.showConfirmDialog(null, message, title, dec, ic);
    }

    private void message(String message, String title, Integer ic) {
        jp.showMessageDialog(null, message, title, ic);
    }

    private String input(String message, String title, Integer ic) {
        return jp.showInputDialog(null, message, title, ic);
    }
    javax.swing.JOptionPane jp = new javax.swing.JOptionPane();
    Integer yes = jp.YES_OPTION, no = jp.NO_OPTION, im = jp.INFORMATION_MESSAGE, wm = jp.WARNING_MESSAGE, qm = jp.QUESTION_MESSAGE, dec = jp.YES_NO_OPTION,
            okC = jp.OK_CANCEL_OPTION, em = jp.ERROR_MESSAGE;
}
