
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depth-obstacle-detect-ros-msgs, image-transport, nodelet, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-depth-obstacle-detect-ros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/anilsripadarao/depth-obstacle-detect-ros-release/archive/release/noetic/depth_obstacle_detect_ros/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "32f645d44fc193b5a2d73fe50674d1e4c3b9f2fd8ba636529027ee8f74db65ea";
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
