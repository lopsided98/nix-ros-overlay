
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-msgs";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_msgs/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "96b68f34e59d88bd59e78b05dcdbb13de9998653b85dba9b19852d0248ee2292";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages exclusive to Ridgeback, especially for representing low-level motor commands and sensors.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
