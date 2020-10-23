
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-noetic-leo-teleop";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_teleop/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "994b6b78f5e017dce233e2c881e429cd9d66f725603bb00cf909901b0f293532";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Teleop package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
