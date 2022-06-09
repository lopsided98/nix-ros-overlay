
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-foxy-leo-description";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-ros2-release/archive/release/foxy/leo_description/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "ef44e25fb969dd49f27d5d485259a2b5f99271e37c8bc159099e6845d1c3389b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
