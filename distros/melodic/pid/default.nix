
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pid";
  version = "0.0.27";

  src = fetchurl {
    url = "https://github.com/AndyZe/pid-release/archive/release/melodic/pid/0.0.27-0.tar.gz";
    name = "0.0.27-0.tar.gz";
    sha256 = "6066703ba3197ee904f55d7e6b1fc054e1901b5ad4d826753061715945a57d62";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch a PID control node.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
