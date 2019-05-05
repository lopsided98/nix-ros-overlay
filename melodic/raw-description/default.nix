
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, cob-description, xacro }:
buildRosPackage {
  pname = "ros-melodic-raw-description";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/melodic/raw_description/0.6.10-0.tar.gz;
    sha256 = "6e238ded8f4fde81b5e6244573d2b29fe9523662f034833d4c8d8252f6ecaf1e";
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
