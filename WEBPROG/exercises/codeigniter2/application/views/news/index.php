<h2 class = "text-center"><kbd><?php echo $title; ?></kbd></h2>
 
<table class = "table-bordered table-hover" border='1' cellpadding='4'>
    <tr>
        <td class = "text-center well-sm"><strong>Title</strong></td>
        <td class = "text-center well-sm"><strong>Content</strong></td>
        <td class = "text-center well-sm"><strong>Name</strong></td>
        <td class = "text-center well-sm"><strong>Nickname</strong></td>
        <td class = "text-center well-sm"><span class="glyphicon glyphicon-envelope"></span></td>
        <td class = "text-center well-sm"><span class="glyphicon glyphicon-home"></span></td>
        <td class = "text-center well-sm"><strong>Gender</strong></td>
        <td class = "text-center well-sm"><span class="glyphicon glyphicon-phone"></span></td>
        <td class = "text-center well-sm"><strong>Comments</strong></td>
        <td class = "text-center well-sm"><strong>Action</strong></td>
    </tr>
<?php foreach ($news as $news_item): ?>
        <tr>
            <td class="well-sm"><?php echo $news_item['title']; ?></td>
            <td class="well-sm"><?php echo $news_item['text']; ?></td>
            <td class="well-sm"><?php echo $news_item['name']; ?></td>
            <td class="well-sm"><?php echo $news_item['nickname']; ?></td>
            <td class="well-sm"><?php echo $news_item['email']; ?></td>
            <td class="well-sm"><?php echo $news_item['address']; ?></td>
            <td class="well-sm"><?php echo $news_item['gender']; ?></td>
            <td class="well-sm"><?php echo $news_item['cellno']; ?></td>
            <td class="well-sm"><?php echo $news_item['comments']; ?></td>
            <td class="well-sm">
                <div class="btn-group btn-group-justified">
                <a href="<?php echo site_url('news/'.$news_item['slug']); ?>" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open" style="color:silver"></span></a>
                <a href="<?php echo site_url('news/edit/'.$news_item['id']); ?> " class="btn btn-primary"><span class ="glyphicon glyphicon-edit" style="color:silver"></span></a>
                <a href="<?php echo site_url('news/delete/'.$news_item['id']); ?>" onClick="return confirm('Are you sure you want to delete?')" class="btn btn-primary"><span class =" glyphicon glyphicon-remove" style="color:red"></span></a>
                </div>
            </td>
        </tr>
<?php endforeach; ?>
</table>