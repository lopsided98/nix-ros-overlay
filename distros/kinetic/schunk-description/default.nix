
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, xacro }:
buildRosPackage {
  pname = "ros-kinetic-schunk-description";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/schunk_modular_robotics-release/archive/release/kinetic/schunk_description/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "f3ae81df86f80dc38a76e61e63dc102040d8e2e7ab8117c3685100408200e497";
  };

  buildType = "catkin";
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
