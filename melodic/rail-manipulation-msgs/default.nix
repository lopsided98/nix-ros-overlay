
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, message-generation, message-runtime, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rail-manipulation-msgs";
  version = "0.0.14-r1";

  src = fetchurl {
    url = "https://github.com/gt-rail-release/rail_manipulation_msgs-release/archive/release/melodic/rail_manipulation_msgs/0.0.14-1.tar.gz";
    name = "0.0.14-1.tar.gz";
    sha256 = "37dfdcee92e63c8bdb5f83315c2d96936813f40d158a3afbd68e35fceb6e2965";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs sensor-msgs message-generation visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs sensor-msgs message-runtime visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common Manipulation Messages and Services Used in RAIL Manipulation Packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
