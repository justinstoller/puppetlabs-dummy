class dummy( $aparam = 'something' ) {
  notify { 'Hello World': }
  $aVar = 'test$varsInSingleQuotedString'
  notify { $aVar: }
}
