
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_msgs/2.2.0-1";
    name = "archive.tar.gz";
    sha256 = "364983248412d2a13e4401be96f94057c48f3215ee0bd553996f3ed3c6031a25";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
