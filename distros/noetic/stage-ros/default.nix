
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, nav-msgs, roscpp, rostest, sensor-msgs, stage, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-stage-ros";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage_ros-release/archive/release/noetic/stage_ros/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "eb77956a339447194a8b45177863165109b0ff1718486ef406f50a9abafe2609";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ boost geometry-msgs nav-msgs roscpp sensor-msgs stage std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ROS specific hooks for stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
