# Top level package set
self:
# Distro package set
rosSelf: rosSuper: with rosSelf.lib; {
  cv-bridge = (patchBoostPython rosSuper.cv-bridge).overrideAttrs ({
    patches ? [],
    propagatedBuildInputs ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/ros-perception/vision_opencv/commit/fbfb25303bd77db6a5943043cc4303d0c0b835c9.patch";
      sha256 = "0pznlbqp99f6bzql3q1sjy9sqk2746wgp7qdqj790j5z0vb2v2r6";
      stripLen = 1;
    }) ];
    propagatedBuildInputs = propagatedBuildInputs ++ [ rosSelf.pythonPackages.opencv3 ];
  });

  gazebo = self.gazebo_9;

  pcl-ros = rosSuper.pcl-ros.overrideAttrs (_: {
    version = "1.7.2";
    src = builtins.fetchTarball {
      url = https://github.com/ros-perception/perception_pcl/archive/6900f7cf650e6c0df2aef45e0011833905b0ba9e.tar.gz;
      sha256 = "15b7x3spiabf8cf94hf9szkh4vk8a0wdch3zqs6y2ysrxw01hbdi";
    } + "/pcl_ros";
  });

  python-orocos-kdl = rosSuper.python-orocos-kdl.overrideAttrs ({
    patches ? [], ...
  }: {
    patches = patches ++ [ (self.fetchpatch {
      url = "https://github.com/orocos/orocos_kinematics_dynamics/commit/d8d087ad0e1c41f3489d1a255ebfa27b5695196b.patch";
      sha256 = "0qyskqxv4a982kidzzyh34xj2iiw791ipbbl29jg4qb4l21xwqlg";
      stripLen = 1;
    }) ];
  });

  rosfmt = patchVendorUrl rosSuper.rosfmt {
    url = "https://github.com/fmtlib/fmt/releases/download/6.0.0/fmt-6.0.0.zip";
    sha256 = "0h148anbaqgch6n69pxsvs1c9wmykgd052wmzgdia7qpz8w6p8dl";
  };
}
