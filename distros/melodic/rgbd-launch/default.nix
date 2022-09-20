
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rgbd-launch";
  version = "2.2.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rgbd_launch-release/archive/release/melodic/rgbd_launch/2.2.2-0.tar.gz";
    name = "2.2.2-0.tar.gz";
    sha256 = "973d8f054d8b7447e8951b5dc8dc65d860a3ce48431789fee0f582d8d56d7f68";
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
