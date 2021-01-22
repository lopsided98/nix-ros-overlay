
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dsr-msgs";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_msgs/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "060cd6f3d6229db516202bd2d185dcf02e39ddd61d9b0030f84c910d96894a47";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dsr_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
