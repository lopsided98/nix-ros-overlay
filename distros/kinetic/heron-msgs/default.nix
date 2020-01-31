
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-heron-msgs";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_msgs/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "581f3578b85d11b73b7b8c62f42f6830b3827e5cfa2bcff4bec493f613e393e0";
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
