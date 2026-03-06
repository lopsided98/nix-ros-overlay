
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mbf-abstract-core";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/jazzy/mbf_abstract_core/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "59ac48e2fc151583d4d303d2ddb5b669d0ccba307cc7167abec2ffe528cc65fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides common interfaces for navigation specific robot actions. It contains the AbstractPlanner, AbstractController and AbstractRecovery plugin interfaces. This interfaces have to be implemented by the plugins to make the plugin available for Move Base Flex. The abstract classes provides a meaningful interface enabling the planners, controllers and recovery behaviors to return information, e.g. why something went wrong. Derivided interfaces can, for example, provide methods to initialize the planner, controller or recovery with map representations like costmap_2d, grid_map or other representations.";
    license = with lib.licenses; [ bsd3 ];
  };
}
