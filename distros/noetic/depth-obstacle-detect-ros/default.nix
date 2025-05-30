
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depth-obstacle-detect-ros-msgs, image-transport, nodelet, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-depth-obstacle-detect-ros";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/anilsripadarao/depth-obstacle-detect-ros-release/archive/release/noetic/depth_obstacle_detect_ros/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "afc43a94b23f764981341a2bd2aaa8d4bf0fb3b44289b15d7c70653b97e15ebc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depth-obstacle-detect-ros-msgs image-transport nodelet roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A depth based obstacle detection package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
