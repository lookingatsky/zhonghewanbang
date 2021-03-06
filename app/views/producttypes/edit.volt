<?php use Phalcon\Tag as Tag ?>

<?php echo Tag::form("producttypes/save") ?>

<ul class="pager">
    <li class="previous pull-left">
        <?php echo Tag::linkTo(array("producttypes/search", "&larr; 返回")) ?>
    </li>
    <li class="pull-right">
        <?php echo Tag::submitButton(array("保存", "class" => "btn btn-success")) ?>
    </li>
</ul>

<?php echo $this->getContent() ?>

<div class="center scaffold">
    <h2>编辑类型</h2>
    
    <input type="hidden" name="id" id="id" value="<?php echo $id ?>" />

    <div class="clearfix">
        <label for="name">名称</label>
        <?php echo Tag::textField(array("name", "size" => 24, "maxlength" => 70)) ?>
    </div>

    </form>
</div>
