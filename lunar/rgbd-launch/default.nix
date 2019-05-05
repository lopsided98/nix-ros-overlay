
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, depth-image-proc, catkin, tf2-ros, rostest, image-proc, nodelet }:
buildRosPackage {
  pname = "ros-lunar-rgbd-launch";
  version = "2.2.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/rgbd_launch-release/archive/release/lunar/rgbd_launch/2.2.2-0.tar.gz;
    sha256 = "ed26e8037787008bfc0746ff88ec9954f3afd58de9a35bb33585c2afc18a095f";
  };

  buildInputs = [ image-proc nodelet depth-image-proc tf2-ros ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ image-proc nodelet depth-image-proc tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to open an RGBD device and load all nodelets to 
     convert raw depth/RGB/IR streams to depth images, disparity images, 
     and (registered) point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
