
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-foxy-leo-description";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-ros2-release/archive/release/foxy/leo_description/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "52b7db585dbb3417330df7dbb7b6f62aff6876716da2659fc8410e6c37fbecda";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
