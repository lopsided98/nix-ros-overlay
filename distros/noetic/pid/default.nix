
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-pid";
  version = "0.0.28-r1";

  src = fetchurl {
    url = "https://github.com/AndyZe/pid-release/archive/release/noetic/pid/0.0.28-1.tar.gz";
    name = "0.0.28-1.tar.gz";
    sha256 = "153a7267a1990b210abb2deec0531548ef9e98390bac86e7daaa3b44eca062fc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch a PID control node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
