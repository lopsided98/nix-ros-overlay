
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, boost, sensor-msgs, catkin, roscpp, rostest, nav-msgs, std-msgs, tf, stage, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-stage-ros";
  version = "1.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/stage_ros-release/archive/release/melodic/stage_ros/1.8.0-0.tar.gz";
    name = "1.8.0-0.tar.gz";
    sha256 = "5762c477b0401c12f43573895f7a94ec3bdfddc4aa9fe3a127d3acc1ce2960d8";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs boost sensor-msgs roscpp rostest nav-msgs std-msgs tf stage geometry-msgs ];
  propagatedBuildInputs = [ std-srvs boost sensor-msgs roscpp nav-msgs std-msgs tf stage geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ROS specific hooks for stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
