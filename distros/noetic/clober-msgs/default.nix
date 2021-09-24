
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-clober-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_msgs-release/archive/release/noetic/clober_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f48c9dc40117870ac70ce005760f86554406dec4969b975f5d7f115b7af1669a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The messages for Clober'';
    license = with lib.licenses; [ asl20 ];
  };
}
