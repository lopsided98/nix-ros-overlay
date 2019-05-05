
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, boost, sensor-msgs, catkin, roscpp, rostest, nav-msgs, std-msgs, tf, stage, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-stage-ros";
  version = "1.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/stage_ros-release/archive/release/lunar/stage_ros/1.8.0-0.tar.gz;
    sha256 = "01b33012f5130a01635991e691effa5df4f70a144e4f4edcc652531e8cb0ef22";
  };

  buildInputs = [ std-srvs boost sensor-msgs roscpp rostest nav-msgs std-msgs tf stage geometry-msgs ];
  propagatedBuildInputs = [ std-srvs boost sensor-msgs roscpp nav-msgs std-msgs tf stage geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ROS specific hooks for stage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
