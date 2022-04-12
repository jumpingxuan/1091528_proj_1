# 1091528_proj_1

題目:

This project is about Demon Slayer (鬼滅之刃). The Sun Breathing (日之呼吸) is the first breath which is also the strongest technique against demons (鬼). Tanjiro Kamado (竈門炭治郎), the main character, is the only one who can use Sun Breathing.

In Chapter 192 of the Demon Slayer manga, the thirteenth type of sun breathing is finally ready to appear. The twelve types of sun breathing correspond to twelve o’clock one by one, and every twelve o’clock is a cycle, so it must be repeated. The mysterious thirteenth form (日之呼吸十三之型) is the form by repeating the sun breathing with the twelve forms to form a circle.
In order to predict the strength of the “Upper Moons”, the Demon Slayer Corps (鬼殺隊) recorded the damage formula that Tanjiro could cause by using the breath of the sun, and calculated the damage that could be caused by 
x
 times of use.

To defeat the final boss, a.k.a Muzan Kibutsuji (鬼舞辻無慘), Tanjiro needs to use the sun breathing by 100 times, but he still needs to defeat multiple forces in Infinity Tower (無限城) before he sees Muzan.
Assuming that Tanjiro needs to activate x times of sun breathing to defeat his opponent, the damage caused by Tanjiro’s activation of 
x
 times Sun Breathing to the opponent can be calculated by the following method:

<img width="423" alt="function" src="https://user-images.githubusercontent.com/82246734/162858151-b888b8a1-3275-4387-a9eb-36f8d36311a1.PNG">

Here we assume x is an integer. You are now asked to write a Recursive RISC-V Assembly Programming to calculate the damage of sun breathing. The program must use recursion as described above. It should only print the final value of F(x). The basic range of x is set x ≦ 99 (total 100 times).

說明:

(i)  利用題目給的function，輸入X值(X<=99)。

(ii) 將X帶入function，輸出F(X)
