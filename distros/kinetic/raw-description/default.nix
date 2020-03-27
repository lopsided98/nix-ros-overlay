
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-kinetic-raw-description";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/raw_description/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "b7d759b44c389f555a87449e3c9e6e5e2757f88519cecd6746acd3684315ed65";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-description gazebo-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
