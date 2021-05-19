import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:DevQuiz/core/core.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text.rich() - permite que você estilize qualquer parte do texto separadamente
                      Text.rich(
                        TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: user.name,
                              style: AppTextStyles.titleBold,
                            ),
                          ],
                        ),
                      ),

                      // Text(
                      //   "Olá Erik",
                      //   style: AppTextStyles.title,
                      // ),
                      //como a imagem tem as bordas arredondadas, se utiliza um container para isso
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(user.photoUrl),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 1),
                  child: ScoreCardWidget(
                    score: user.score,
                  ),
                )
              ],
            ),
          ),
        );
}