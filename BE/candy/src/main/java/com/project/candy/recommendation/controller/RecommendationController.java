package com.project.candy.recommendation.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

/**
 * packageName    : com.project.candy.recommendation.controller fileName       :
 * RecommendationController date           : 2023-03-28 description    :
 */
@RestController
@RequestMapping("/recommendation")
@RequiredArgsConstructor
@Slf4j
public class RecommendationController {
//  private final DefaultUriBuilderFactory factory = new DefaultUriBuilderFactory(BASE_URL);

  @Autowired
  private WebClient webClient;

  public String readCandyRecommendationByEmail(String email){
    return webClient.get()
//        .uri("/candy")
        .uri("/1")
        .retrieve()
        .bodyToMono(String.class)
        .block();
  }

  @GetMapping("/candy")
  public ResponseEntity<?> readCandyRecommendation(@RequestHeader(value = "email") String email){
    String s = readCandyRecommendationByEmail("ac@naver.com");
    log.info(s);
    return null;
  }
}
