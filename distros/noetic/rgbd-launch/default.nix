
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, image-proc, nodelet, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rgbd-launch";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rgbd_launch-release/archive/release/noetic/rgbd_launch/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "9a1b14200ea87872c0f29983101b2594a821e61ec1c3210fbe49c94b8bc66bb1";
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
