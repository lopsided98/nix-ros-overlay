
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pid";
  version = "0.0.27";

  src = fetchurl {
    url = "https://github.com/AndyZe/pid-release/archive/release/kinetic/pid/0.0.27-0.tar.gz";
    name = "0.0.27-0.tar.gz";
    sha256 = "f0f31bf9f2abca9d6ed2d6e96a9349b50e7a06fbf10c12e4d789657757e07435";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch a PID control node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
