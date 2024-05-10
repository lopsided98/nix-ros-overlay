
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-cybertech-support";
  version = "0.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_cybertech_support/0.9.0-2.tar.gz";
    name = "0.9.0-2.tar.gz";
    sha256 = "0be82824987283989f323f359c560c74ff2b523587d506e417b05f89f9459528";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-resources launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot models for the KUKA cybertech family.";
    license = with lib.licenses; [ asl20 ];
  };
}
