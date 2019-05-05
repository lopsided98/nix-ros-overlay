
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, orocos-kdl, cmake-modules, catkin, tf2-ros, tf2, rostest, eigen }:
buildRosPackage {
  pname = "ros-lunar-tf2-kdl";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_kdl/0.5.20-0.tar.gz;
    sha256 = "f890cd6c8a58266a3a409517318732c5859b9d643b5c875eb0ee4fbd619c3f66";
  };

  buildInputs = [ cmake-modules orocos-kdl tf2-ros tf2 eigen ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf2 orocos-kdl tf2-ros eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
