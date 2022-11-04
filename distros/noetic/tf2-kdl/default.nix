
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, orocos-kdl, ros-environment, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-kdl";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_kdl/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "78bda9fac5cf7f76b53b4058cba45ee2ba714cedc6ada646049d1bee0df1dd67";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ ros-environment rostest ];
  propagatedBuildInputs = [ eigen orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
