
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-lbr-iisy-support";
  version = "0.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_lbr_iisy_support/0.9.0-2.tar.gz";
    name = "0.9.0-2.tar.gz";
    sha256 = "eaab25266a7c7b32f2bf2ad31c1b5ddfb3b5c4aa0b6984f20fc38a5256830e45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-resources launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing models of KUKA LBR iisy family";
    license = with lib.licenses; [ asl20 ];
  };
}
