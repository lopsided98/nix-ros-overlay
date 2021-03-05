
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-heron-msgs";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_msgs/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "7a73423506fbf3e3c9843b779164ed5784357b0c05982d7b338126ca323cc4e6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides standard messages specific to Heron, especially for 
    the microcontroller's rosserial interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
