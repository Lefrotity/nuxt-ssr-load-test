<template>
  <div class="card" v-once>
    <img :src="image" :alt="title" />
    <div class="content">
      <div class="title">{{ title }}</div>
      <div class="description">{{ description }}</div>
      <div class="date">{{ date }}</div>
    </div>
  </div>
</template>

<script setup lang="ts">
defineProps<{
  title: string;
  description: string;
  image: string;
  date: string;
}>();
</script>

<style scoped>
.card {
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  overflow: hidden;
  background: #fff;
}

img {
  width: 100%;
  height: 180px;
  object-fit: cover;
}

.content {
  padding: 12px;
}

.title {
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 8px;
}

.description {
  font-size: 14px;
  color: #555;
  margin-bottom: 8px;
}

.date {
  font-size: 12px;
  color: #888;
}
</style>
