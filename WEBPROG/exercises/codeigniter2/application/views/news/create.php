<h2><?php echo $title; ?></h2>
 
<?php echo validation_errors(); ?>
 
<?php echo form_open('news/create'); ?>    
    <table>
        <tr class = "has-success has-error">
            <td><label for="title">Title</label></td>
            <td><input type="input" class="form-control" name="title" size="50" placeholder="Title of post" /></td>
        </tr>
        <tr class = "has-success has-error">
            <td><label for="text">Text</label></td>
            <td><textarea name="text" class="form-control" rows="10" cols="40" placeholder="Description of post"></textarea></td>
        </tr>
        <tr class = "has-success has-error">
            <td><label for="name">Name</label></td>
            <td><input type="input" class="form-control" name="name" size="50" placeholder="Alphabetical and numeric characters" /></td>
        </tr>
        <tr class = "has-success has-error">
            <td><label for="nickname">Nickname</label></td>
            <td><input type="input" class="form-control" name="nickname" size="30" placeholder="Alphabetical characters"></textarea></td>
        </tr>
        <tr class = "has-success has-error">
            <td><label for="email">Email</label></td>
            <td><input type="input" class="form-control" name="email" size="50" placeholder="username@email.com" /></td>
        </tr>
        <tr class = "has-success has-error">
            <td><label for="address">Address</label></td>
            <td><textarea name="address" class="form-control" rows="10" cols="40" placeholder="Address here. Not required"></textarea></td>
        </tr>
        <tr class = "has-success has-error">
            <td><label for="gender">Gender</label></td>
            <td><input type="input" class="form-control" name="gender" size="10" placeholder="M/F/Male/Female"></textarea></td>
        </tr>
        <tr class = "has-success has-error">
            <td><label for="cellno">Cellphone Number</label></td>
            <td><input type="input" class="form-control" name="cellno" size="20" placeholder="11 number cell number here." /></td>
        </tr>
        <tr class = "has-success has-error">
            <td><label for="comments">Comments</label></td>
            <td><textarea name="comments" class="form-control" rows="10" cols="40" placeholder="Any comments here. Not required"></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" class="form-control" name="submit" value="Create news item" /></td>
        </tr>
    </table>    
</form>