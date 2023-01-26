<template>
<div>
    <h1>Users List</h1>
        <ul class="list-group">
            <li class="list-group-item" v-for="user in users" :key="user.id">
                {{ users.first_name }}{{ users.last_name }}
            </li>
        </ul>
</div>
</template>

<script>
import { onMounted } from 'vue';
const API_URL = 'http://localhost/3000/users';
onMounted(async()=>{
    const res = await fetch(API_URL)
    users.value = await res.json
})
</script>

<style scoped>
</style>