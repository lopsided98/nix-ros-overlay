
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher-gui, kuka-gazebo, kuka-resources, launch-ros, launch-testing-ament-cmake, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-agilus-support";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_agilus_support/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "bf2d866e68f3240c0207da99741536728ff4ffd3dbd3523520707b78fa52d7bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher-gui kuka-gazebo kuka-resources launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot models for the KUKA agilus family.";
    license = with lib.licenses; [ asl20 ];
  };
}
