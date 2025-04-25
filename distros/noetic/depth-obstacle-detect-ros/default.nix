
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depth-obstacle-detect-ros-msgs, image-transport, nodelet, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-depth-obstacle-detect-ros";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/anilsripadarao/depth-obstacle-detect-ros-release/archive/release/noetic/depth_obstacle_detect_ros/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "94a13110783a08f8a417676c5e240be4b645daab1ae8ea00ff44a1122b516589";
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
