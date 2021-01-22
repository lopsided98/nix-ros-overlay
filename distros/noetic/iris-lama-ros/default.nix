
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, iris-lama, message-filters, nav-msgs, rosbag, rosbag-storage, roscpp, std-srvs, tf, tf-conversions, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-iris-lama-ros";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama_ros-release/archive/release/noetic/iris_lama_ros/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "2eb84cbb775047aabfb9ead468443b3b290d77059bf6f688ba010df52f83f00d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs iris-lama message-filters nav-msgs rosbag rosbag-storage roscpp std-srvs tf tf-conversions visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package of IRIS Localization and Mapping (LaMa).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
