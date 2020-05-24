
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, iris-lama, message-filters, nav-msgs, rosbag, rosbag-storage, roscpp, tf, tf-conversions, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-iris-lama-ros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama_ros-release/archive/release/melodic/iris_lama_ros/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f89e7dfc1bb5b3368cba94097d3346973cd8b93c8f64ce4d70c9277121217c4e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs iris-lama message-filters nav-msgs rosbag rosbag-storage roscpp tf tf-conversions visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package of IRIS Localization and Mapping (LaMa).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
