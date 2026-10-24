
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, plansys2-bringup, plansys2-bt-actions, plansys2-core, plansys2-domain-expert, plansys2-executor, plansys2-kairos-plan-solver, plansys2-lifecycle-manager, plansys2-msgs, plansys2-pddl-parser, plansys2-planner, plansys2-popf-plan-solver, plansys2-problem-expert, plansys2-support-py, plansys2-terminal, plansys2-tools, plansys2-tui-cli }:
buildRosPackage {
  pname = "ros-lyrical-plansys2";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "10b21a142edcf7962e8692bb33f1f292b47473e36ce1bf32d73b9db9dac30b7e";
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
