<div class="members grid-item" id="members">
  <ul>
    <?php for($i=$pageStart; $i < $pageEnd; $i++) { ?>
      <li>
        <article>
          <a class="member" href="http://localhost/IT_Develop/memberContent.php?id=<?php echo $idArray[$i];
           ?>"> <?php echo ($namesArray[$i] . ' ' . $surnamesArray[$i]);?>
        </article>
      </li>
    <?php } if (count($namesArray)>5) {?>
    <div class = 'pagination'>
      <ul>
       <li>
         <a href='<?php echo pagePrev($page);?>'>&laquo;</a>
       </li>
        <?php for ($i=0; $i < $pageCount; $i++) { ?>
              <li>
                <a href='<?php echo pageManager($i+1);?>'><?php echo $i+1 ?></a>
              </li>
        <?php  } ?>
        <li>
          <a href='<?php echo pageNext($page, $pageCount);?>'>&raquo;</a>
        </li>
      </ul>
    </div>
    <?php }elseif (count($namesArray)==0) {
      echo "No members now";
    } ?>
  </ul>
</div>
