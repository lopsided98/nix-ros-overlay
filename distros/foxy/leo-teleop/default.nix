
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joy, teleop-twist-joy, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-foxy-leo-teleop";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-ros2-release/archive/release/foxy/leo_teleop/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6268a726125a3c6a86c6912738eff3c225329df6a6a2f8dd69e16a5401117eb6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joy teleop-twist-joy teleop-twist-keyboard ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Scripts and launch files for Leo Rover teleoperation'';
    license = with lib.licenses; [ mit ];
  };
}
