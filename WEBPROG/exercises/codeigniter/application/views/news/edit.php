<h2><?php echo $title; ?></h2>
 
<?php echo validation_errors(); ?>
 
<?php echo form_open('news/edit/'.$news_item['id']); ?>
    <table>
        <tr>
            <td><label for="title">Title</label></td>
            <td><input type="input" name="title" size="50" value="<?php echo $news_item['title'] ?>" /></td>
        </tr>
        <tr>
            <td><label for="text">Text</label></td>
            <td><textarea name="text" rows="10" cols="40"><?php echo $news_item['text'] ?></textarea></td>
        </tr>
        <tr>
            <td><label for="name">Name</label></td>
            <td><input type="input" name="name" size="50" value="<?php echo $news_item['name'] ?>" /></td>
        </tr>
        <tr>
            <td><label for="nickname">Nickname</label></td>
            <td><input type="input" name="nickanme" size="30" value="<?php echo $news_item['nickname'] ?>" ></textarea></td>
        </tr>
        <tr>
            <td><label for="email">Email</label></td>
            <td><input type="input" name="email" size="50" value="<?php echo $news_item['email'] ?>" /></td>
        </tr>
        <tr>
            <td><label for="address">Address</label></td>
            <td><textarea name="address" rows="10" cols="40"><?php echo $news_item['address'] ?></textarea></td>
        </tr>
        <tr>
            <td><label for="gender">Gender</label></td>
            <td><input type="input" name="gender" size="10" value="<?php echo $news_item['gender'] ?>" ></textarea></td>
        </tr>
        <tr>
            <td><label for="cellno">Cellphone Number</label></td>
            <td><input type="input" name="cellno" size="20" value="<?php echo $news_item['cellno'] ?>" /></td>
        </tr>
        <tr>
            <td><label for="comments">Comments</label></td>
            <td><textarea name="comments" rows="10" cols="40"><?php echo $news_item['comments'] ?></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="Edit news item" /></td>
        </tr>
    </table>
</form>