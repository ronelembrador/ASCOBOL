<h2 class = "text-center"><kbd><?php echo $title; ?></kbd></h2>
 
<table class = "table-bordered table-hover" border='1' cellpadding='4'>
    <tr>
        <td><strong>Title</strong></td>
        <td><strong>Content</strong></td>
        <td><strong>Name</strong></td>
        <td><strong>Nickname</strong></td>
        <td><strong>E-mail</strong></td>
        <td><strong>Address</strong></td>
        <td><strong>Gender</strong></td>
        <td><strong>Cellphone #</strong></td>
        <td><strong>Comments</strong></td>
        <td><strong>Action</strong></td>
    </tr>
<?php foreach ($news as $news_item): ?>
        <tr>
            <td><?php echo $news_item['title']; ?></td>
            <td><?php echo $news_item['text']; ?></td>
            <td><?php echo $news_item['name']; ?></td>
            <td><?php echo $news_item['nickname']; ?></td>
            <td><?php echo $news_item['email']; ?></td>
            <td><?php echo $news_item['address']; ?></td>
            <td><?php echo $news_item['gender']; ?></td>
            <td><?php echo $news_item['cellno']; ?></td>
            <td><?php echo $news_item['comments']; ?></td>
            <td>
                <a href="<?php echo site_url('news/'.$news_item['slug']); ?>">View</a> |
                <a href="<?php echo site_url('news/edit/'.$news_item['id']); ?>">Edit</a> |
                <a href="<?php echo site_url('news/delete/'.$news_item['id']); ?>" onClick="return confirm('Are you sure you want to delete?')">Delete</a>
            </td>
        </tr>
<?php endforeach; ?>
</table>