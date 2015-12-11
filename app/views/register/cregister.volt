<?php use Phalcon\Tag as Tag ?>

{{ content() }}

<div class="page-header">
    <h2>注册中合万邦</h2>
</div>
<style>
.red{
	color:red;
	font-weight:bold;
}
</style>
{{ form('register/register', 'id': 'registerForm', 'onbeforesubmit': 'return false') }}

    <fieldset>
		<?php echo Tag::hiddenField(array("iscustomer","value" => "1")) ?>
	
         <div class="control-group">
            {{ form.label('name', ['class': 'control-label']) }}
            <div class="controls">
                {{ form.render('name', ['class': 'form-control']) }} <span class="red">*</span>
                <!-- <p class="help-block">(必填)</p> -->
                <div class="alert alert-warning" id="name_alert">
                    <strong>错误 !</strong> 请输入您的姓名
                </div>
            </div>
        </div>

        <div class="control-group">
            {{ form.label('username', ['class': 'control-label']) }}
            <div class="controls">
                {{ form.render('username', ['class': 'form-control']) }} <span class="red">*</span>
                <!-- <p class="help-block">(必填)</p> -->
                <div class="alert alert-warning" id="username_alert">
                    <strong>错误 !</strong> 请输入用户名
                </div>
            </div>
        </div>

        <div class="control-group">
            {{ form.label('email', ['class': 'control-label']) }}
            <div class="controls">
                {{ form.render('email', ['class': 'form-control']) }} <span class="red">*</span>
                <!-- <p class="help-block">(必填)</p> -->
                <div class="alert alert-warning" id="email_alert">
                    <strong>错误 !</strong> 请输入邮箱
                </div>
            </div>
        </div>

         <div class="control-group">
            {{ form.label('password', ['class': 'control-label']) }}
            <div class="controls">
                {{ form.render('password', ['class': 'form-control']) }} <span class="red">*</span>
                <p class="help-block">(最少8个字符)</p>
                <div class="alert alert-warning" id="password_alert">
                    <strong>错误 !</strong> 请输入密码
                </div>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="repeatPassword">确认密码</label>
            <div class="controls">
                {{ password_field('repeatPassword', 'class': 'form-control') }}
                <div class="alert" id="repeatPassword_alert">
                    <strong>错误 !</strong> 两次密码不一样
                </div>
            </div>
        </div>

        <div class="form-actions">
            {{ submit_button('注 册', 'class': 'btn btn-primary', 'onclick': 'return SignUp.validate();') }}
            <!-- <p class="help-block">By signing up, you accept terms of use and privacy policy.</p> -->
        </div>
    </fieldset>
</form>
