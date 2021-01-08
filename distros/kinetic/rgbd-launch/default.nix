
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-rgbd-launch";
  version = "2.2.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rgbd_launch-release/archive/release/kinetic/rgbd_launch/2.2.2-0.tar.gz";
    name = "2.2.2-0.tar.gz";
    sha256 = "c5a51eacfedf43adc47cbd95156c3aeee110c8a53b40d9e5cac1415830b72dcd";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ depth-image-proc image-proc nodelet tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to open an RGBD device and load all nodelets to 
     convert raw depth/RGB/IR streams to depth images, disparity images, 
     and (registered) point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
