
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, gtest, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-schunk-description";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/ipa320/schunk_modular_robotics-release/archive/release/melodic/schunk_description/0.6.12-0.tar.gz;
    sha256 = "e8b387455b278c049357886b457c7016a4b79ba90cf0b83b5382813a17505d62";
  };

  checkInputs = [ gtest ];
  propagatedBuildInputs = [ gazebo-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of different schunk components. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
