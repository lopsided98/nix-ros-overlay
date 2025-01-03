
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-dual-arm-panda-moveit-config";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/dual_arm_panda_moveit_config/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "565f2765b55a5c617c0e917b77cf7bcf6bb8087996156a1d61a59ee4c4042d53";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description robot-state-publisher topic-tools xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>
      Dual Franka Emika Panda MoveIt Configuration 
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
