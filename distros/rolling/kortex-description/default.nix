
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gz-ros2-control, joint-state-publisher, joint-state-publisher-gui, joint-trajectory-controller, parallel-gripper-controller, picknik-reset-fault-controller, picknik-twist-controller, robot-state-publisher, robotiq-description, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-kortex-description";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_description/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "14313aeee8163b9012ba5035b9fddcd5a96676b168b4d7faa780eab7eeeba729";
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
