
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, generate-parameter-library, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, moveit-task-constructor-capabilities, moveit-task-constructor-core, moveit-task-constructor-visualization, py-binding-tools }:
buildRosPackage {
  pname = "ros-kilted-moveit-task-constructor-demo";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/kilted/moveit_task_constructor_demo/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "62ba824ab13cb778305052b6c0fd0bb92750722cf0c89ece2612997db0a649d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager generate-parameter-library moveit-configs-utils moveit-core moveit-resources-panda-moveit-config moveit-ros-planning-interface moveit-task-constructor-capabilities moveit-task-constructor-core moveit-task-constructor-visualization py-binding-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "demo tasks illustrating various capabilities of MTC.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
