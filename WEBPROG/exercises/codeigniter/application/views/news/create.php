<h2><?php echo $title; ?></h2>
 
<?php echo validation_errors(); ?>
 
<?php echo form_open('news/create'); ?>    
    <table>
        <tr>
            <td><label for="title">Title</label></td>
            <td><input type="input" name="title" size="50" /></td>
        </tr>
        <tr>
            <td><label for="text">Text</label></td>
            <td><textarea name="text" rows="10" cols="40"></textarea></td>
        </tr>
        <tr>
            <td><label for="name">Name</label></td>
            <td><input type="input" name="name" size="50" /></td>
        </tr>
        <tr>
            <td><label for="nickname">Nickname</label></td>
            <td><input type="input" name="nickanme" size="30"></textarea></td>
        </tr>
        <tr>
            <td><label for="email">Email</label></td>
            <td><input type="input" name="email" size="50" /></td>
        </tr>
        <tr>
            <td><label for="address">Address</label></td>
            <td><textarea name="address" rows="10" cols="40"></textarea></td>
        </tr>
        <tr>
            <td><label for="gender">Gender</label></td>
            <td><input type="input" name="gender" size="10"></textarea></td>
        </tr>
        <tr>
            <td><label for="cellno">Cellphone Number</label></td>
            <td><input type="input" name="cellno" size="20" /></td>
        </tr>
        <tr>
            <td><label for="comments">Comments</label></td>
            <td><textarea name="comments" rows="10" cols="40"></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="Create news item" /></td>
        </tr>
    </table>    
</form>