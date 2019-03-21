
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, tf2, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf2-eigen";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_eigen/0.6.5-0.tar.gz;
    sha256 = "0097c690bd551d83154cc551b7d50439d86e8acda2bc4ebc307d1157cdf8c24d";
  };

  propagatedBuildInputs = [ tf2 geometry-msgs eigen ];
  nativeBuildInputs = [ tf2 cmake-modules eigen catkin geometry-msgs ];

  meta = {
    description = ''tf2_eigen'';
    #license = lib.licenses.BSD;
  };
}
