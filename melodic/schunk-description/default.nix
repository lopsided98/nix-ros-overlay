
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gtest, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-schunk-description";
  version = "0.6.13-r2";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_description/0.6.13-2.tar.gz;
    sha256 = "b3ae5b1d2b3c99078751a4450ec523fbc8727ed3e2b79dbf78d7c3a8a1d80532";
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
