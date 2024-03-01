
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-description, gazebo-ros, xacro }:
buildRosPackage {
  pname = "ros-noetic-raw-description";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/noetic/raw_description/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "a8a56c3cdb9eda1c3fc4eb88f79a29ee7c84876b23c5c9251bb50fa8f576d657";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
