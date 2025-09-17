# Redução de Ruído em Imagens com Octave

Este projeto explora diversas técnicas de filtragem espacial para a redução de ruído em imagens, utilizando o **GNU Octave**. O foco principal é a remoção do ruído **"sal e pimenta"**, um tipo comum de ruído que afeta a qualidade das imagens digitais.

## Visão Geral

Cada script `.m` neste repositório implementa um filtro de suavização espacial diferente. O processo geral em cada script é:

1. Carregar a imagem original (`cameraman.tif`).
2. Adicionar ruído **"sal e pimenta"** à imagem.
3. Aplicar um filtro específico para reduzir o ruído.
4. Exibir as três imagens (original, com ruído e filtrada) lado a lado para comparação.

## Filtros Implementados

Aqui estão os filtros disponíveis neste projeto:

- **Filtro da Média Aritmética (`media_aritmetrica.m`)**:  
  Calcula a média dos valores de pixel em uma vizinhança e substitui o pixel central por essa média. É simples, mas tende a borrar a imagem.

- **Filtro da Média Geométrica (`media_geometrica.m`)**:  
  Semelhante à média aritmética, mas calcula a média geométrica. Preserva melhor as bordas do que a média aritmética.

- **Filtro da Mediana (`mediana.m`)**:  
  Utiliza a mediana dos valores de pixel na vizinhança. É muito eficaz na remoção de ruído "sal e pimenta" com mínima desfocagem.

- **Filtro do Ponto Médio (`ponto_medio.m`)**:  
  Calcula o ponto médio entre os valores máximo e mínimo na vizinhança. Funciona bem para ruídos com distribuição uniforme ou gaussiana.

- **Filtro da Média Alfa-Cortada (`media_alfa_cortada.m`)**:  
  Uma variação do filtro de média, onde um número de pixels com os maiores e menores valores são descartados antes do cálculo da média. É útil para imagens com múltiplos tipos de ruído.

- **Filtro da Média Contra-Harmônica (`media_contra_harmonica.m`)**:  
  Eficaz para eliminar ruído "sal" (pixels brancos) ou "pimenta" (pixels pretos), dependendo do valor do parâmetro `Q`.

- **Filtro de Mínimo (`minimo.m`)**:  
  Substitui o valor do pixel pelo valor mínimo encontrado em sua vizinhança. É útil para encontrar os pontos mais escuros em uma imagem.

## Como Usar

1. Abra o GNU Octave.
2. Navegue até a pasta do projeto.
3. Execute qualquer script `.m` correspondente ao filtro que deseja testar.
4. Observe as imagens comparando o efeito do filtro.

