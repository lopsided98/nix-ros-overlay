
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, generate-parameter-library, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, moveit-task-constructor-capabilities, moveit-task-constructor-core, moveit-task-constructor-visualization, py-binding-tools }:
buildRosPackage {
  pname = "ros-rolling-moveit-task-constructor-demo";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/rolling/moveit_task_constructor_demo/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "f6e8c88a7724dc9dc37ae98969a76d7b5fef1134b84d42dd11c7643307e36bf0";
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
