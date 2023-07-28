
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, launch-testing, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-planner, plansys2-problem-expert, rclcpp }:
buildRosPackage {
  pname = "ros-iron-plansys2-bringup";
  version = "2.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/iron/plansys2_bringup/2.0.10-1.tar.gz";
    name = "2.0.10-1.tar.gz";
    sha256 = "289ca01aa856e839ee243101a937e21377837e37093947d09b877c33234d1af2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ launch-ros plansys2-domain-expert plansys2-executor plansys2-lifecycle-manager plansys2-planner plansys2-problem-expert rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
