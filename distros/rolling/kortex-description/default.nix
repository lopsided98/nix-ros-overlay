
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, joint-trajectory-controller, picknik-reset-fault-controller, picknik-twist-controller, robot-state-publisher, robotiq-description, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-kortex-description";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_description/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "b7c9cdb7268261132cf1fea02707528b1234ab8ae8ee1ae6cbbac83097ef5ffb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui joint-trajectory-controller picknik-reset-fault-controller picknik-twist-controller robot-state-publisher robotiq-description rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>URDF and xacro description package for Kortex robots</p>
    <p>This package contains configuration data, 3D models and launch files
for Kortex arms and supported grippers</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
