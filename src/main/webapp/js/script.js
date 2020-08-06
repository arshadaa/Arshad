function add_to_cart(pid,pname,price)
{
    
  let cart  = localStorage.getItem("cart");
   if(cart==null){
       //no cart yet
       let products=[];
       let product={productId: pid,productName:pname,productQuantity:1,productPrice:price};
       products.push(product);
       localStorage.setItem("cart",JSON.stringify(products));
       console.log("Product is added first time");
    } 
   else
   {
       //cart is already present
    /*   let pcart = JSON.parse(cart);
         let oldProduct = pcart.find((item)=>item.prductId == pid)
       if(oldProduct)
       {
           //Only we have to increase the quantity
           oldProduct.produtQuantity = oldProduct.produtQuantity + 1
           pcart.map((item)=>){
               if(item.productId == oldProduct.productId)
               {
                   item.productQuantity = oldProduct.produtQuantity;
                   
               }
           }localStorage.setItem("cart",JSON.stringify(pcart));
           console.log("Product quantity is increased");
       }    
      
       else
       {
           //We have to add the product
            let product={productId:pid,productName:pname,productQuantity:1,productPrice:price};
            pcart.push(product);
            localStorage.setItem("cart",JSON.stringify(pcart));
            console.log("Product is added ");
        }*/
    }
}