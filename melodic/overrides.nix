# Top level package set
self:
# Distro package set
rosSelf: rosSuper: {
  actionlib = rosSuper.actionlib.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [
      (self.fetchpatch {
        url = https://github.com/ros/actionlib/commit/677e952fcbfe49e6e4c5b835357f88740f49c6ff.patch;
        sha256 = "0825w6r5kzz9y7syrrn6q1v0fjrd8qhn11rq2n4kc064702r8jf7";
      })
    ];
  });
}
