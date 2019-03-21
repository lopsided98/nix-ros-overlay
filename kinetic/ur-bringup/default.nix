
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ur-driver, catkin, tf2-ros, ur-description }:
buildRosPackage {
  pname = "ros-kinetic-ur-bringup";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/universal_robot-release/archive/release/kinetic/ur_bringup/1.2.1-0.tar.gz;
    sha256 = "7702c40a1514c57ae5bab7fa7210fe5197660deef3994f19afdd844cd7d77558";
  };

  propagatedBuildInputs = [ tf2-ros ur-driver ur-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ur_bringup package'';
    #license = lib.licenses.BSD;
  };
}
