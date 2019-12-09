
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, geometry-msgs, std-msgs, std-srvs, tf, catkin, roscpp, stage, nav-msgs, rostest }:
buildRosPackage {
  pname = "ros-melodic-stage-ros";
  version = "1.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage_ros-release/archive/release/melodic/stage_ros/1.8.0-0.tar.gz";
    name = "1.8.0-0.tar.gz";
    sha256 = "5762c477b0401c12f43573895f7a94ec3bdfddc4aa9fe3a127d3acc1ce2960d8";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs geometry-msgs std-msgs std-srvs tf roscpp stage nav-msgs rostest ];
  propagatedBuildInputs = [ boost sensor-msgs geometry-msgs std-msgs std-srvs tf roscpp stage nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ROS specific hooks for stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
