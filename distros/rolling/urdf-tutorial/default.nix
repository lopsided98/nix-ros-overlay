
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-urdf-tutorial";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdf_tutorial-release/archive/release/rolling/urdf_tutorial/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "8acac890df9460447afa2164ff982b511f0bcc1f90c1c3d92fd1400a11ee62ec";
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
