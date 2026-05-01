
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, generate-parameter-library, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, moveit-task-constructor-capabilities, moveit-task-constructor-core, moveit-task-constructor-visualization, py-binding-tools }:
buildRosPackage {
  pname = "ros-lyrical-moveit-task-constructor-demo";
  version = "0.1.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/lyrical/moveit_task_constructor_demo/0.1.5-3.tar.gz";
    name = "0.1.5-3.tar.gz";
    sha256 = "826b731af5535e09bbf9ccf4ae257d9d108c5b872156fe8843628f4b49054e2e";
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
