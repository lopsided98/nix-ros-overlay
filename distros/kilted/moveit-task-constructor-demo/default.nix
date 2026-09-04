
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, generate-parameter-library, moveit-configs-utils, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, moveit-task-constructor-capabilities, moveit-task-constructor-core, moveit-task-constructor-visualization, py-binding-tools }:
buildRosPackage {
  pname = "ros-kilted-moveit-task-constructor-demo";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_task_constructor-release/archive/release/kilted/moveit_task_constructor_demo/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "bc83bc5ead0e29c9587ed69954c83f5b618ec5e8ad191916e17f1a29d5143978";
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
