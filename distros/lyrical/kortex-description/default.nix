
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-ros2-control, joint-state-publisher, joint-state-publisher-gui, joint-trajectory-controller, parallel-gripper-controller, picknik-reset-fault-controller, picknik-twist-controller, robot-state-publisher, robotiq-description, rviz2 }:
buildRosPackage {
  pname = "ros-lyrical-kortex-description";
  version = "0.2.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/lyrical/kortex_description/0.2.5-4.tar.gz";
    name = "0.2.5-4.tar.gz";
    sha256 = "deb0356cf40b1a457c97bdc4b4612da9b795082dc6300ca276dcdee4108e9aab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gz-ros2-control joint-state-publisher joint-state-publisher-gui joint-trajectory-controller parallel-gripper-controller picknik-reset-fault-controller picknik-twist-controller robot-state-publisher robotiq-description rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>URDF and xacro description package for KINOVA KORTEX™ robots</p>
    <p>This package contains configuration data, 3D models and launch files
for KINOVA KORTEX™ arms and supported grippers</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
