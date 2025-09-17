clear all;
close all;
pkg load image;

img_original = imread('cameraman.tif');

% Ruído sal e pimenta
img_ruido = imnoise(img_original, 'salt & pepper', 0.05);

% Dimensões da imagem com ruído
[linha, coluna] = size(img_ruido);

img_filtro = img_ruido;

% Definições da máscara
mascara = 3;
desvio = floor(mascara / 2);

for i = (desvio + 1) : (linha - desvio)
  for j = (desvio + 1) : (coluna - desvio)

    % Extrai a vizinhança (janela) ao redor do pixel atual
    celulas_proximas = img_ruido(i - desvio : i + desvio, j - desvio : j + desvio);

    % Converte a vizinhança para double para garantir a precisão no cálculo
    vizinhanca_double = double(celulas_proximas(:));

    % Encontra o valor mínimo (pixel mais escuro) na vizinhança
    minimo = min(vizinhanca_double);

    % Encontra o valor máximo (pixel mais claro) na vizinhança
    maximo = max(vizinhanca_double);

    % 4. Calcula o ponto médio
    ponto_medio = (minimo + maximo) / 2;

    % Atribui o valor calculado de volta à imagem de filtro
    img_filtro(i, j) = uint8(ponto_medio);

  endfor
endfor


figure;

subplot(1, 3, 1);
imshow(img_original);
title('1. Imagem Original');

subplot(1, 3, 2);
imshow(img_ruido);
title('2. Imagem com Ruído Sal e Pimenta');

subplot(1, 3, 3);
imshow(img_filtro);
title('3. Imagem Filtrada - Ponto Médio');
