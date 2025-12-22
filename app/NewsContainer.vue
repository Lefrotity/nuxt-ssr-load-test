<template>
  <div class="grid">
    <NewsItem
      v-for="item in news"
      :key="item.id"
      :title="item.title"
      :description="item.description"
      :image="item.image"
      :date="item.date"
    />
  </div>
</template>

<script setup lang="ts">
import NewsItem from "./NewsItem.vue";

console.log(1);

type NewsItemType = {
  id: number;
  title: string;
  description: string;
  image: string;
  date: string;
};

function generateNews(count: number): NewsItemType[] {
  return Array.from({ length: count }, (_, i) => ({
    id: i,
    title: `Article №${i + 1}`,
    description:
      "Lalala alalala lad asdasd akjsdgadgad jkhagd ajhdg akjhdga sdgasd jhagsfd kjsfgsf sdf",
    image: `https://picsum.photos/seed/news-${i}/300/180`,
    date: new Date().toLocaleDateString("en-US"),
  }));
}

const news = generateNews(30);
</script>

<style scoped>
.grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 16px;
  padding: 16px;
}
</style>
