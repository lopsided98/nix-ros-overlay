
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-auv-control-allocator";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_auv_control_allocator/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "afc80cd2db6bd5d78c81673d6b75cc77ba2ab589638f111963ea6cb7e28ffb3d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Optimal allocation of forces and torques to thruster and fins of AUVs'';
    license = with lib.licenses; [ asl20 ];
  };
}
