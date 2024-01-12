
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, iris-lama, message-filters, nav-msgs, rosbag, rosbag-storage, roscpp, std-srvs, tf, tf-conversions, tf2-geometry-msgs, visualization-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-iris-lama-ros";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama_ros-release/archive/release/noetic/iris_lama_ros/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "e99e79b003e294db1eaf51b0eb338e760f3138c031eab1dc1ab480afded49ea2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs iris-lama message-filters nav-msgs rosbag rosbag-storage roscpp std-srvs tf tf-conversions tf2-geometry-msgs visualization-msgs yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package of IRIS Localization and Mapping (LaMa).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
