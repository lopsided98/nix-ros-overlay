
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-noetic-raw-description";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/noetic/raw_description/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "91ac6cb900660ec84ac4e8a4523a8069b59b1a7f823908466e1601bf7c47e62d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-description gazebo-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
