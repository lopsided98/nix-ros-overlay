
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, cob-description, xacro }:
buildRosPackage {
  pname = "ros-kinetic-raw-description";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/raw_description/0.6.11-0.tar.gz;
    sha256 = "fd3ba602099c81646d98a838ad510e9a57a4c63e7d96cec77374bf1dc7d10999";
  };

  propagatedBuildInputs = [ gazebo-ros cob-description xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
