
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-foxy-leo-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/foxy/leo_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6da57acb9f9cdcf5e6f3e4ce2cef4cb6959f2dc1d401c6748287bb7ee07b89ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
