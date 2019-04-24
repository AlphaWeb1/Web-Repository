/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package optimization;

/**
 *
 * @author hp
 */
import java.awt.BorderLayout;
import java.awt.Color;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;
public class OptimizationUI extends javax.swing.JFrame {


    public OptimizationUI() {
        initComponents();
        setLocationRelativeTo(null);
        jPanel3.setVisible(false);
        jPanel5.setVisible(false);
        jTabbedPane1.removeTabAt(1);
        jTabbedPane1.removeTabAt(1);
//        System.out.println((int)'0'); return;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        rst1 = new javax.swing.JTextArea();
        jPanel5 = new javax.swing.JPanel();
        jPanel6 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Traditional Arabic", 1, 22)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Optimization Solution Using Simplex Method");

        jButton2.setFont(new java.awt.Font("Traditional Arabic", 1, 14)); // NOI18N
        jButton2.setText("Click to Test Simplex");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        rst1.setEditable(false);
        rst1.setBackground(new java.awt.Color(0, 0, 51));
        rst1.setColumns(20);
        rst1.setForeground(new java.awt.Color(255, 255, 255));
        rst1.setRows(5);
        jScrollPane2.setViewportView(rst1);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 761, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 383, Short.MAX_VALUE))
        );

        jTabbedPane1.addTab("Solution Progress", jPanel2);

        jPanel6.setBackground(new java.awt.Color(204, 204, 255));
        jPanel6.setLayout(new java.awt.BorderLayout());

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 761, Short.MAX_VALUE)
            .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel5Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(jPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addContainerGap()))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 394, Short.MAX_VALUE)
            .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel5Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(jPanel6, javax.swing.GroupLayout.DEFAULT_SIZE, 372, Short.MAX_VALUE)
                    .addContainerGap()))
        );

        jTabbedPane1.addTab("Graph Evaluator", jPanel5);

        jPanel4.setBackground(new java.awt.Color(204, 204, 255));
        jPanel4.setLayout(new java.awt.BorderLayout());

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 761, Short.MAX_VALUE)
            .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel3Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addContainerGap()))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 394, Short.MAX_VALUE)
            .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel3Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, 372, Short.MAX_VALUE)
                    .addContainerGap()))
        );

        jTabbedPane1.addTab("Result Chart Evaluator", jPanel3);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 341, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(215, 215, 215))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 734, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jTabbedPane1)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jButton2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTabbedPane1)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    Double[][] assSlack(Integer eqn){
       Double sla[][]=new Double[eqn][eqn];
        String hi="";
        for (int i = 0; i < sla.length; i++) {
            String jay="";
            if (hi.contains(i+"")){ continue;}
            for (int j = 0; j < sla[0].length; j++) {
                if (hi.contains(j+"")){ 
                    sla[i][j]=0.0;continue;}
                 if (jay.contains(j+"")||hi.contains(i+"")){ break;}
                sla[i][j]=1.0;
                jay+=j+"";
            hi+=i+"";
//                System.out.println(i+"$"+j+" "+sla[i][j]);
            }
        }
        for (int i = 0; i < sla.length; i++) {
            for (int j = 0; j < sla[0].length; j++) {
                if (sla[i][j]==null) {
                    sla[i][j]=0.0;  
                }
            }
        }
        return sla;
    }
    Integer getMax(String []simp,Integer max){
        for (int i = 0; i < simp.length; i++) {
            String ops[]=new String[2];
            if(i==0){
                 ops[0]=simp[i].split("=")[1].replace("+", "%"); ops[1]="0";
                 String op[]=ops[0].split("%");
                 max=maxi(max, op.length); continue;
            }
             if (simp[i].contains("<=")) {
                ops[0]=simp[i].split("<=")[0].replace("+", "%"); ops[1]=simp[i].split("<=")[1];
                 String op[]=ops[0].split("%");
                max=maxi(max, op.length); continue;
            }if (simp[i].contains("<")) {
                ops[0]=simp[i].split("<")[0].replace("+", "%"); ops[1]=simp[i].split("<")[1];
                 String op[]=ops[0].split("%");
                max=maxi(max, op.length);  continue;
            }
        }
        return max;
    }
    String[] getParams(String [] simp){
        for (int i = 0; i < simp.length; i++) {
            if(i==0){
                simp[i]=input("Enter Equation for Problem Objective:", "Request", qm); 
                rst1.append("\tObjective: "+simp[i]+"\t\n\tConstraints:");
                continue;
            }
            simp[i]=input("Enter Equation for Problem Constraint "+i+":", "Request", qm).trim();
             rst1.append("\n\t\t"+simp[i]+"\n");
        }
        return simp;
    }
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        System.out.println("");        
        Integer eqn=Integer.parseInt(input("Enter Number Of Constraints:", "Request", qm));
        String simp[]=new  String[eqn+1];
        Double[][]Vrow=new Double[eqn+1][];Double slaks[][]=assSlack(eqn),sq[]=new Double[eqn],rt[]=new Double[eqn+1],obsl[]=new Double[eqn];
        for (int i = 0; i < obsl.length; i++) {
           obsl[i]=0.0;
        }rst1.setText("\t\t-----------------\tOptimization Solution\t----------------\n");
        Integer c=0;
        simp=getParams(simp);
        ///////////////////////////////////////////
        Integer max=0;
        max=getMax(simp,max);
        Vrow=new Double[eqn+1][max+1];
//        System.out.println("Max="+max+" "+simp[0]); 
        for (int i = 0; i < simp.length; i++) {
            String ops[]=new String[2];
            if(i==0){
                 ops[0]=simp[i].split("=")[1].replace("+", "%"); ops[1]="0";
                 String op[]=ops[0].split("%");
                if (Vrow[0].length>op.length+1) {
                    for (int j = 0; j < op.length; j++) {
                        String mm="";
                        for (int k = 0; k < op[j].length(); k++) {
                            mm+=((((int)op[j].charAt(k))>=48)&&(((int)op[j].charAt(k))<=57)||(op[j].charAt(k)=='-'))?op[j].charAt(k)+"":"";
                        }
                        Vrow[i][j] = Double.parseDouble(mm)*-1.0;
                    }
                    for (int j = op.length; j < Vrow[0].length-1; j++) {
                        Vrow[i][j] = 0.0;
                    }
                }else{
                    for (int j = 0; j < op.length; j++) {
                        String mm="";
                        for (int k = 0; k < op[j].length(); k++) {
                            mm+=((((int)op[j].charAt(k))>=48)&&(((int)op[j].charAt(k))<=57)||(op[j].charAt(k)=='-'))?op[j].charAt(k)+"":"";
                        }
                        Vrow[i][j] = Double.parseDouble(mm)*-1.0;
                    }
                }
                Vrow[i][Vrow[0].length-1]=0.0;
                continue;
            }
            if (simp[i].contains("<=")) {
                ops[0]=simp[i].split("<=")[0].replace("+", "%"); ops[1]=simp[i].split("<=")[1];
                 String op[]=ops[0].split("%");
                if (Vrow[0].length>op.length+1) {
                    for (int j = 0; j < op.length; j++) {
                         String mm="";
                        for (int k = 0; k < op[j].length(); k++) {
                            mm+=((((int)op[j].charAt(k))>=48)&&(((int)op[j].charAt(k))<=57)||(op[j].charAt(k)=='-'))?op[j].charAt(k)+"":"";
                        }
                        Vrow[i][j] = Double.parseDouble(mm);
                    }
                    for (int j = op.length; j < Vrow[0].length-1; j++) {
                        Vrow[i][j] = 0.0;
                    }
                }else{
                    for (int j = 0; j < op.length; j++) {
                        String mm="";
                        for (int k = 0; k < op[j].length(); k++) {
                            mm+=((((int)op[j].charAt(k))>=48)&&(((int)op[j].charAt(k))<=57)||(op[j].charAt(k)=='-'))?op[j].charAt(k)+"":"";
                        }
                        Vrow[i][j] = Double.parseDouble(mm);
                    }
                }
                Vrow[i][Vrow[0].length-1]=Double.parseDouble(ops[1]);
                continue;
            }if (simp[i].contains("<")) {
                ops[0]=simp[i].split("<")[0].replace("+", "%"); ops[1]=simp[i].split("<")[1];
                 String op[]=ops[0].split("%");
                if (Vrow[0].length>op.length+1) {
                    for (int j = 0; j < op.length; j++) {
                        String mm="";
                        for (int k = 0; k < op[j].length(); k++) {
                            mm+=((((int)op[j].charAt(k))>=48)&&(((int)op[j].charAt(k))<=57)||(op[j].charAt(k)=='-'))?op[j].charAt(k)+"":"";
                        }
                        Vrow[i][j] = Double.parseDouble(mm);
                    }
                    for (int j = op.length; j < Vrow[0].length-1; j++) {
                        Vrow[i][j] = 0.0;
                    }
                }else{
                    for (int j = 0; j < op.length; j++) {
                        String mm="";
                        for (int k = 0; k < op[j].length(); k++) {
                            mm+=((((int)op[j].charAt(k))>=48)&&(((int)op[j].charAt(k))<=57)||(op[j].charAt(k)=='-'))?op[j].charAt(k)+"":"";
                        }
                        Vrow[i][j] = Double.parseDouble(mm);
                    }
                }
                Vrow[i][Vrow[0].length-1]=Double.parseDouble(ops[1]);
            }
        }rst1.append("\n");
        ////////////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////
        Integer tblc=1;Double newVrow[][]=Vrow;String myopt;westr="";
            /////////////////////////////////////////////////////////////////////////////////
            Integer pc,pr;Double pe,pch=0.0;
            pc=getPivotC(newVrow);
            /////////////////////////////////////////////////////////////////////////////////
            generateRatios(rt,newVrow,pc);
            pr=getPivotR(rt);
            if (pr==0) {
                rst1.append("This Problem is Slready an Optimized Problem\n");
                return;
            }
            westr+=(""+pc+"%"+pr+"-");
            pe=newVrow[pr][pc];
            /////////////////////////////////////////////////////////////////////////////////
             displayTable( newVrow,obsl,slaks,rt);
             /////////////////////////////////////////////////////////////////////////////////
             showPivots(pr,pc,pe,newVrow);
             myopt=checkOptimalty(newVrow); 
//             int mm=1;
//             if (mm==1) {
//            return;
//            }
             /////////////////////////////////////////////////////////////////////////////////
             XYSeriesCollection dataset= new XYSeriesCollection();
            XYSeries series1[];
            rst1.append("\n");
        while (myopt.equalsIgnoreCase("not optimal")) { 
//            System.out.println("------------------------------");
//            for (int i = 0; i < rt.length; i++) {
//                System.out.println(" Please We Need PrVal= "+rt[i]);
//                
//            }
//            System.out.println("------------------------------");
            tblc++;
            rst1.append("\n\t-----Solution is not Optimal----- \n\t New Tableaux "+tblc+"\n");
            Double pivCon[]=new Double[newVrow.length];
            for (int i = 0; i < newVrow.length; i++) {
                if (i==pr) { 
                     newVrow[i][pc]=pivCon[i]=newVrow[i][pc]/pe;
                     continue;
                }
                pivCon[i]=newVrow[i][pc];
                newVrow[i][pc]=pivCon[i]-newVrow[i][pc];
            }
            
//            System.out.println("slacks time "+slaks.length);
            for (int k = 0; k < slaks.length; k++) {
                        slaks[k][pr-1]=slaks[k][pr-1]/pe;
                       // System.out.println(slaks[k][pr-1]+" jj ");
            }
            for (int i = 0; i < newVrow.length; i++) {
                for (int j = 0; j < newVrow[0].length; j++) {
                    if (j==pc) {
                        continue;
                    }
                    if (i==pr) {
                        newVrow[i][j]=newVrow[i][j]/pe;
                    }
                }
            }
            for (int k = -1; k < slaks.length; k++) {
                for (int i = 0; i < slaks[0].length; i++) {
                    if (k==-1) {
                        obsl[i]=obsl[i]-(pivCon[k+1]*slaks[pr-1][i]);
                        continue;
                    }
                    if (k+1==(pr)) {
                        continue; 
                    } slaks[k][i]=slaks[k][i]-(pivCon[k+1]*slaks[pr-1][i]);
//                    System.out.println("\n\t"+slaks[k][i]+" pp "+slaks[pr-1][i]);
                } 
            }
            for (int i = 0; i < newVrow.length; i++) {
                for (int j = 0; j < newVrow[0].length; j++) {
                    if (j==pc) {
                        continue;
                    }
                    if (i==pr) {
                        continue; 
                    }
//                    System.out.println(pivCon[i]+" zzz "+newVrow[pr][j]+" fff "+newVrow[i][j]+" bbb "+j+" vvv "+i);
                    newVrow[i][j]=newVrow[i][j]-(pivCon[i]*newVrow[pr][j]);
                }
            }
            pch=0.0;
            pc=getPivotC(newVrow);
            //////////////////////////////////////////////////////////////////////////////////////////
            generateRatios(rt,newVrow,pc);
            pr=getPivotR(rt);
            if (pr==0) {
                break;
            }
            pe=newVrow[pr][pc];
            /////////////////////////////////////////////////////////////////////////////
            displayTable( newVrow,obsl,slaks,rt);
            /////////////////////////////////////////////////////////////////////////////////
             myopt=checkOptimalty(newVrow); 
            if (myopt.equalsIgnoreCase("optimal")) {
                break;
            }
            showPivots(pr,pc,pe,newVrow);
             /////////////////////////////////////////////////////////////////////////////////
            rst1.append("\n");
//            if (tblc>4) {
//                break;
//            }
            westr+=(""+pc+"%"+pr+"-");
        }
       rst1.append("\n\t-----Solution is Optimal At-----\n");
        
        String ops1=simp[0].split("=")[1].replace("+", "%"); 
                 String op1[]=ops1.split("%");
                 String weatra[]=westr.split("-"),wea="";
                 for (int i = 0; i < (op1.length); i++) {
                    wea+=op1[i].charAt(op1[i].length()-1);
                 }
        for (int i = -1; i < (op1.length); i++) {
            if (i==-1) {
                rst1.append("\n\t\tP Max="+newVrow[0][newVrow[0].length-1]+"\n "); continue;
            }
            int w=Integer.parseInt(weatra[i].split("%")[0]),v=Integer.parseInt(weatra[i].split("%")[1]);
            rst1.append("\t\t"+wea.charAt(w)+"="+newVrow[v][newVrow.length-1]+"\n ");
        }
       String chartTitle = "Optimisation Graph";
        String xAxisLabel = "X";
        String yAxisLabel = "Y";
        JFreeChart chart = ChartFactory.createXYLineChart(chartTitle,
                xAxisLabel, yAxisLabel, dataset);
        ChartPanel chp = new ChartPanel(chart);
        jPanel6.removeAll();
        jPanel6.add(chp, BorderLayout.CENTER);
        jPanel6.validate();
       
    }//GEN-LAST:event_jButton2ActionPerformed
String westr;
    Integer maxi(Integer m1,Integer m2){
    return (m1>m2)?m1:m2;
}
Double mini(Double m1,Double m2){
    return (m1<m2)?m1:m2;
}
Integer getPivotC(Double[][] Vrow){
Integer pc=0;Double pch=0.0;
        for (int i = 0; i < Vrow[0].length-1; i++) {
            if (i==0) {
                pch=Vrow[0][i];pc=i;
            }
            if (pch<=Vrow[0][i]) {
                pch=pch+0.0;
            }else{
                pch=Vrow[0][i];pc=i;
            }
        }
        return pc;
}
Integer getPivotR(Double[] Vrow){
    Integer pr=0;Double pch=-0.0;
        for (int i = 1; i < Vrow.length; i++) {
            System.out.println(" Please We Need PrVal= "+Vrow[i]);
            if(Vrow[i]<0.0){
                pr=pr+0;
                pch=pch*1.0; continue;
            }
            if (i==1) {
                pch=Vrow[i];pr=i;
            }
             if (pch<=Vrow[i]) {
                 if (pch==-0.0) {
                     pch=Vrow[Vrow.length-1]; pr=Vrow.length-1; continue;
                 }
                pch=pch+0.0;
            }else{
                pch=Vrow[i];pr=i;
            }
        }
    return pr;
}
    void generateRatios(Double rt[],Double Vrow[][],Integer pc){
       for (int i = 0; i < Vrow.length; i++) {
           if (Vrow[i][pc]==0.0) {
              rt[i]= Vrow[i][Vrow[0].length-1]; continue;
           }
        rt[i]=Vrow[i][Vrow[0].length-1]/Vrow[i][pc];
        } 
    }
    void displayTable(Double Vrow[][],Double obsl[],Double slaks[][],Double rt[]){
                for (int i = -1; i < Vrow.length; i++) {
            for (int j = -1; j < Vrow[0].length; j++) {
                if (j==-1&&i==-1) {
                    rst1.append("\t");
                    continue;
                }
                if (j==-1) {
                    rst1.append("\tL"+(i+1));
                    continue;
                }
                if (i==-1) {
                    if(j==Vrow[0].length-1){
                        rst1.append("\tSQ\tRatio");
                        continue;
                    }else{
                        rst1.append("\tX"+(j+1));
                    }
                    if (j==Vrow[0].length-2) {
                        int s=1;
                        for (int k = 0; k < obsl.length; k++) {
                            rst1.append("\t S"+s); s++;
                        }
                        continue;
                    }
                    continue;
                }
                if(j==Vrow[0].length-1){
                    rst1.append("\t"+Vrow[i][j]+"\t"+String.format("%.2f",rt[i]));
                }else{
                    rst1.append("\t"+String.format("%.2f",Vrow[i][j]));
                }
                if (j==Vrow[0].length-2&&i==0) {
                    for (int k = 0; k < obsl.length; k++) {
                        rst1.append("\t"+String.format("%.2f",obsl[k]));
                    }
                    continue;
                }
                if (j==Vrow[0].length-2&&i>0) {
                    for (int k = 0; k < slaks[0].length; k++) {
                        rst1.append("\t"+String.format("%.2f",slaks[i-1][k]));
                    }
                }
            }
             rst1.append("\n");
       }
    }
    void showPivots(Integer pr, Integer pc,Double pe, Double Vrow[][]){
        rst1.append("\n\tPivot Col:"+pc);
        rst1.append("\n\tPivot Row:"+pr);
        rst1.append("\n\tPivot Element:"+String.format("%.2f",pe));
    }
     Boolean f = false, t = true;
    javax.swing.JOptionPane jp = new javax.swing.JOptionPane();
    Integer yes = jp.YES_OPTION, no = jp.NO_OPTION, im = jp.INFORMATION_MESSAGE, wm = jp.WARNING_MESSAGE, qm = jp.QUESTION_MESSAGE, dec = jp.YES_NO_OPTION, okC = jp.OK_CANCEL_OPTION, em = jp.ERROR_MESSAGE;

    private String checkOptimalty(Double[][] Vrow){
        String optimal="optimal";
         for (int i = 0; i < Vrow[0].length-1; i++) {
            if (Vrow[0][i]<0.0) {
                System.out.println("\n Solution is not optimal");
                 optimal="not optimal";
            }
        }
         return optimal;
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

    public void empty(javax.swing.JTextField obj) {
        obj.setText(null);
    }
    
    
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(OptimizationUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(OptimizationUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(OptimizationUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(OptimizationUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new OptimizationUI().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTextArea rst1;
    // End of variables declaration//GEN-END:variables
}
