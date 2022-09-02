
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, iris-lama, libyamlcpp, message-filters, nav-msgs, rosbag, rosbag-storage, roscpp, std-srvs, tf, tf-conversions, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-iris-lama-ros";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama_ros-release/archive/release/noetic/iris_lama_ros/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "47d0db0b2db22a1f7def7343df5c3420d021184a45d299dd0f75aa88eb8ac60d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs iris-lama libyamlcpp message-filters nav-msgs rosbag rosbag-storage roscpp std-srvs tf tf-conversions tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package of IRIS Localization and Mapping (LaMa).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
