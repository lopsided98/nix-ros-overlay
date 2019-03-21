
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, sensor-msgs, tf, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ncd-parser";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/scan_tools-release/archive/release/kinetic/ncd_parser/0.3.2-0.tar.gz;
    sha256 = "df4fc052d4ebdf9d6073d197453be6dccca14d2b3861fdf79edfc6c400aa3aee";
  };

  propagatedBuildInputs = [ sensor-msgs tf roscpp ];
  nativeBuildInputs = [ catkin sensor-msgs tf roscpp ];

  meta = {
    description = ''The ncd_parser package reads in .alog data files from the New College Dataset and broadcasts scan and odometry messages to ROS.'';
    #license = lib.licenses.BSD;
  };
}
