
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, plansys2-bringup, plansys2-bt-actions, plansys2-core, plansys2-domain-expert, plansys2-executor, plansys2-lifecycle-manager, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-popf-plan-solver, plansys2-problem-expert, plansys2-support-py, plansys2-terminal, plansys2-tools }:
buildRosPackage {
  pname = "ros-lyrical-plansys2";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "9d2bc49c627ccd1332baeb3dbed8370d865e31fbd20664f0a432c238125bf7fd";
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
