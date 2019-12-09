
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, catkin, actionlib-msgs, visualization-msgs, message-generation }:
buildRosPackage {
  pname = "ros-melodic-rail-manipulation-msgs";
  version = "0.0.14-r1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rail_manipulation_msgs-release/archive/release/melodic/rail_manipulation_msgs/0.0.14-1.tar.gz";
    name = "0.0.14-1.tar.gz";
    sha256 = "37dfdcee92e63c8bdb5f83315c2d96936813f40d158a3afbd68e35fceb6e2965";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs actionlib-msgs visualization-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs actionlib-msgs visualization-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Manipulation Messages and Services Used in RAIL Manipulation Packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
