
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-foxy-urdf-tutorial";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/foxy/urdf_tutorial/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "90a070ae9db4203819d830f59f618fdb57146c1dcf26fc1d2d80674e23e35153";
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
