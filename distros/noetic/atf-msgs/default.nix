
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-atf-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/floweisshardt/atf-release/archive/release/noetic/atf_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "937a50a48a6449060614c9310d76a3e3d10da3a29d51abd03162d3177298f4c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages, services and actions for the ATF.";
    license = with lib.licenses; [ asl20 ];
  };
}
