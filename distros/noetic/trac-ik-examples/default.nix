
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, nlopt, orocos-kdl, pr2-description, trac-ik-lib, xacro }:
buildRosPackage {
  pname = "ros-noetic-trac-ik-examples";
  version = "1.6.7-r1";

  src = fetchurl {
    url = "https://github.com/traclabs/trac_ik-release/archive/release/noetic/trac_ik_examples/1.6.7-1.tar.gz";
    name = "1.6.7-1.tar.gz";
    sha256 = "3b4e922a1f25291b44f3df1ff4e426d9657dd63dfe38393642fdef5f8c3fe325";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost nlopt orocos-kdl pr2-description trac-ik-lib xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the source code for testing and comparing trac_ik";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
