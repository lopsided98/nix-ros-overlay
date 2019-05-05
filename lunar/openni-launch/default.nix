
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rgbd-launch, roslaunch, nodelet, openni-camera }:
buildRosPackage {
  pname = "ros-lunar-openni-launch";
  version = "1.11.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/openni_camera-release/archive/release/lunar/openni_launch/1.11.1-0.tar.gz;
    sha256 = "8e19b99b116fc673b16428b56dd3ab30df377a126879413d649d8831433929d3";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ rgbd-launch nodelet openni-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files to open an OpenNI device and load all nodelets to 
     convert raw depth/RGB/IR streams to depth images, disparity images, 
     and (registered) point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
