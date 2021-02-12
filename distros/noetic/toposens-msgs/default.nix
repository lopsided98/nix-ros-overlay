
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/noetic/toposens_msgs/2.2.0-1";
    name = "archive.tar.gz";
    sha256 = "1d711b6b6f4d05ee86ea2c9a2d4290aef3876163de3294cba610ead5a9b17b0c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
