
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, cob-description, xacro }:
buildRosPackage {
  pname = "ros-kinetic-raw-description";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/raw_description/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "04a0ad8a154e5b12587193c8260bd9c9c942301e6aa66ebcebb6aa93aa864235";
  };

  buildType = "catkin";
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
