
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-smacc-msgs";
  version = "1.4.6-r1";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/smacc-release/archive/release/noetic/smacc_msgs/1.4.6-1.tar.gz";
    name = "1.4.6-1.tar.gz";
    sha256 = "8d96661d3990f909810695c831b4dac42a86af71d5f7a8b1ae6888cfed4c7608";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''this package contains a set of messages that are used by the introspection
    interfaces for smacc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
