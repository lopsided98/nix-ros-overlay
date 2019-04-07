
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, tf2, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tf2-eigen";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_eigen/0.5.20-0.tar.gz;
    sha256 = "c6fd80898753f78784770962624947a040f2cd603008d9a8a0125639df0ba8db";
  };

  buildInputs = [ tf2 cmake-modules geometry-msgs eigen ];
  propagatedBuildInputs = [ tf2 geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_eigen'';
    #license = lib.licenses.BSD;
  };
}
