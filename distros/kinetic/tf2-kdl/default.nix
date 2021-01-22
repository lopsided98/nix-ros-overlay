
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, orocos-kdl, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-tf2-kdl";
  version = "0.5.20";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_kdl/0.5.20-0.tar.gz";
    name = "0.5.20-0.tar.gz";
    sha256 = "e31080e4c92067ac7a8120216e539d4414e659d3fcf29f5d8f28458f30334f46";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ eigen orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
