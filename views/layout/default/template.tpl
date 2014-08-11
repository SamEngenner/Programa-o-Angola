<html lang="pt">

    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>{$title|default: "Sem Titulo"}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->	
        <link rel="stylesheet" href="<?php print $_layoutParam["caminho_css"] ?>bootstrap.css" />
        <link rel="stylesheet" href="<?php print $_layoutParam["caminho_css"] ?>bootstrap.min.css" /> 
        <link rel="stylesheet" href="<?php print $_layoutParam["caminho_fontes"] ?>css/font-awesome.min.css" /> 
        <script type="text/javascript" src="<?php print URL; ?>public/js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="<?php print URL; ?>public/js/jquery.validate.js"></script>
        <script type="text/javascript" src="<?php print URL; ?>public/js/jquery.leanModal.min.js"></script>
        
        <?php if(isset($_layoutParam['css']) && count($_layoutParam['css'])):?>
        <?php for($i=0;$i<count($_layoutParam['css']); $i++): ?>
        <link rel="stylesheet" href="<?php print $_layoutParam['css'][$i]?>" />       
        <?php endfor;?>
        <?php endif;?>
        
        <?php if(isset($_layoutParam['js']) && count($_layoutParam['js'])):?>
        <?php for($i=0;$i<count($_layoutParam['js']); $i++): ?>
        <script type="text/javascript" src="<?php print $_layoutParam['js'][$i]?>"></script>       
        <?php endfor;?>
        <?php endif;?>
        
        
        
    </head>
    
    <body>
       

       <!------ Secao Main A Principal da Minha Pagina temos a classe container e id main---->
        <section class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            
            <!----NAV DO MENU PRINCIPAL DO SITE----->
            <nav class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		<span class="sr-only">Navegação Movel</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	    </button>
		
                <a class="navbar-brand" rel="" href="">Home</a> 
            </nav>   
                
            <nav class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                 <?php if (isset($_layoutParam["menu"])): ?>
                 <?php for ($i=0;$i<count($_layoutParam["menu"]);$i++):?>
 <?php (($item && $_layoutParam["menu"][$i]["id"]==$item) ? $item_style="corrent" : $item_style=""); ?> 
                  
             <li id="<?php print $item_style;?>"><a href="<?php echo $_layoutParam["menu"][$i]["link"];?>"> <?php echo $_layoutParam["menu"][$i]["titulo"]; ?></a></li>
               <?php  endfor;    endif;  ?>
               
                <!-------Dropdwon ----->
                <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categorias <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href=""></a></li>
                <li class="divider"></li>
                </ul>
                </li>
                </ul>
              <!-----------FIM DO MENU------------->
		
                <div class="col-sm-3 col-md-3 pull-right">
          <form class="navbar-form" role="search">
            <div class="input-group">
                <input type="search" class="form-control" placeholder="Buscar" name="srch-term" id="srch-term">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </div>
          </form>
		</div>
            </nav> 
            
        </section>
       <!----  Inicio da secção principal da pagina!---->
       <section class="container">
       <div class="row"> 
           <br />
            <br />
             <br />
             <noscript>Para usar todas funcionalidades ativa o javascript no seu navegador</noscript> 
           
             <div class=""><?php if(isset($this->erro)):
               print $this->erro;?>
                 <?php    endif; ?>
           </div>
           <div class=""><?php if(isset($this->mensagem)):
               print $this->mensagem;?>
           <?php    endif; ?>
           </div>
             
             
             
             
             include file=$conteudo
             
             
             
             <script type="text/javascript">
function ola(){
   alert("ola"); 
   }
</script>

</div>
</section>
<footer class="col-lg-4"><?php print APP_DESCRICAO ?></footer>

<script type="text/javascript" src="<?php print $_layoutParam["caminho_js"];?>bootstrap.js"></script>
<script type="text/javascript" src="<?php print $_layoutParam["caminho_js"];?>bootstrap.min.js"></script> 
             

</body>
             
             
             
             
             
             
             