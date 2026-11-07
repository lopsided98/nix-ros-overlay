
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, plansys2-bringup, plansys2-bt-actions, plansys2-core, plansys2-domain-expert, plansys2-executor, plansys2-kairos-plan-solver, plansys2-lifecycle-manager, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-popf-plan-solver, plansys2-problem-expert, plansys2-support-py, plansys2-terminal, plansys2-tools, plansys2-tui-cli }:
buildRosPackage {
  pname = "ros-jazzy-plansys2";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "c64a63b3aa59ad2eb3889cbeb0b9c62b949efc7d42080a1dba991c39ba3445af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ plansys2-bringup plansys2-bt-actions plansys2-core plansys2-domain-expert plansys2-executor plansys2-kairos-plan-solver plansys2-lifecycle-manager plansys2-msgs plansys2-pddl-parser plansys2-planner plansys2-popf-plan-solver plansys2-problem-expert plansys2-support-py plansys2-terminal plansys2-tools plansys2-tui-cli ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
