
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtest, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-schunk-description";
  version = "0.6.13-r1";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_description/0.6.13-1.tar.gz;
    sha256 = "ef165d9ff465bbbe7d2c1e85f89295e9ca4d5e391947f0cf9269385cb665d427";
  };

  checkInputs = [ gtest ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of different schunk components. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
