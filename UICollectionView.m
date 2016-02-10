NSArray *collectionImages;

 

//        Add this code inside the ViewDidLoad method in the class ‘CollectionViewClass’.

collectionImages = [NSArray arrayWithObjects:@"image1.png",@"image2.png",@"image3.png",@"image4.png",@"image5.png",@"image6.png",@"image7.png",@"image8.png",@"image9.png",@"image10.png",@"image11.png", nil];
1
	
collectionImages = [NSArray arrayWithObjects:@"image1.png",@"image2.png",@"image3.png",@"image4.png",@"image5.png",@"image6.png",@"image7.png",@"image8.png",@"image9.png",@"image10.png",@"image11.png", nil];

 //                      At last we need to implement the UICollectionView delegate methods. Now add the below methods inside the CollectionViewClass.

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return collectionImages.count;

}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *identifier = @"Cell";

  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];

    UIImageView *collectionImageView = (UIImageView *)[cell viewWithTag:100];

    collectionImageView.image = [UIImage imageNamed:[collectionImages objectAtIndex:indexPath.row]];
    return cell;

}

	
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
 
    return collectionImages.count;
 
}
 
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
 
    static NSString *identifier = @"Cell";
 
  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
 
    UIImageView *collectionImageView = (UIImageView *)[cell viewWithTag:100];
 
    collectionImageView.image = [UIImage imageNamed:[collectionImages objectAtIndex:indexPath.row]];
    return cell;
 
}

 



