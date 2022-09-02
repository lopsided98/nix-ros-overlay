
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-foxy-leo-description";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/foxy/leo_description/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "26987b31d9c8ac94af1b1aedf1ad0be1678d7e6faa7ddd207792f9ad146fbefb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
