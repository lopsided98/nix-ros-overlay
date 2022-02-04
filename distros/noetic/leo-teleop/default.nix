
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-noetic-leo-teleop";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo_teleop/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3523ecad5dea33cec046a17b697451d9db9a3110d1835fb49bf94644678aaac3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Scripts and launch files for Leo Rover teleoperation'';
    license = with lib.licenses; [ mit ];
  };
}
