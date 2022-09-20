
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rgbd-launch";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rgbd_launch-release/archive/release/noetic/rgbd_launch/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "3068bc034a4ccf0aa8810a9b825b43e4c300e7ed7bb9626ae1ea97ffcda41b40";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
