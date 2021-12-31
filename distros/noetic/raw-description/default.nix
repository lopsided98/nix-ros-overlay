
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-noetic-raw-description";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/raw_description/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "0abf310c464787041f5a67fc91c74b1e15e451f2bc6a80fae072a587ab29d40e";
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
