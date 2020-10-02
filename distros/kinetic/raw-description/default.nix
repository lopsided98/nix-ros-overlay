
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-kinetic-raw-description";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/raw_description/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "cded661002bf9ec92dfe2581ec06b38b0edaed304210b27abe9722e1d1aeb557";
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
