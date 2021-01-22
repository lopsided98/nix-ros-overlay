
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-noetic-leo-teleop";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_teleop/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "5557e80252f9e223267b11f547936c3606566d0ae13a7823e25a3ae4ab1332cc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for Leo Rover teleoperation'';
    license = with lib.licenses; [ mit ];
  };
}
