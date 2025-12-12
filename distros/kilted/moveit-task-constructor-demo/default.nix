
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, generate-parameter-library, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, moveit-task-constructor-capabilities, moveit-task-constructor-core, moveit-task-constructor-visualization, py-binding-tools }:
buildRosPackage {
  pname = "ros-kilted-moveit-task-constructor-demo";
  version = "0.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/kilted/moveit_task_constructor_demo/0.1.4-2.tar.gz";
    name = "0.1.4-2.tar.gz";
    sha256 = "bfca18cee324361b5ee0f2350870ea3039a3692042596f46d4625ce99455f2e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ generate-parameter-library moveit-configs-utils moveit-core moveit-resources-panda-moveit-config moveit-ros-planning-interface moveit-task-constructor-capabilities moveit-task-constructor-core moveit-task-constructor-visualization py-binding-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "demo tasks illustrating various capabilities of MTC.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
