
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, robot-state-publisher, ros2launch, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-andino-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "5e9cb8b409dc35626d1517d51ce87399dc4d07e05ecfc0d8c82d957d528bdf1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher-gui robot-state-publisher ros2launch rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The andino_description package'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
