
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-iron-urdf-tutorial";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/iron/urdf_tutorial/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "9ac3c45151ead4281d8fe1e318d26dcc969fea7df64df55f1298f670b77c19a1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains a number of URDF tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
