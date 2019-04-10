
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, tf2, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf2-eigen";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_eigen/0.5.20-0.tar.gz;
    sha256 = "11f16e78ca3e1203508e7997c46e3b880144b5e2d2242a496c1d1b8269ddcca9";
  };

  buildInputs = [ tf2 cmake-modules geometry-msgs eigen ];
  propagatedBuildInputs = [ tf2 geometry-msgs eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_eigen'';
    #license = lib.licenses.BSD;
  };
}
