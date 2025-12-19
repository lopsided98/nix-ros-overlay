
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, plansys2-bringup, plansys2-bt-actions, plansys2-core, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-popf-plan-solver, plansys2-problem-expert, plansys2-support-py, plansys2-terminal, plansys2-tools }:
buildRosPackage {
  pname = "ros-kilted-plansys2";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "8bcb77afb0080e385bdbbb2d8fab32bef5e28218f4011f56a21cf3e9b5636805";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ plansys2-bringup plansys2-bt-actions plansys2-core plansys2-domain-expert plansys2-executor plansys2-lifecycle-manager plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-popf-plan-solver plansys2-problem-expert plansys2-support-py plansys2-terminal plansys2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
