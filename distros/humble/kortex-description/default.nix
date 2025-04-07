
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, joint-trajectory-controller, picknik-reset-fault-controller, picknik-twist-controller, robot-state-publisher, robotiq-description, rviz2 }:
buildRosPackage {
  pname = "ros-humble-kortex-description";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/humble/kortex_description/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "c4c71ba783c161b39ebaf61c43ebc79ef0c5241e251d0a4ccd78d9925dbd73ca";
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
