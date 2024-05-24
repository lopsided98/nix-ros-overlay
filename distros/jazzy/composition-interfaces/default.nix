
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-composition-interfaces";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/composition_interfaces/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "dc0b2042afcae4c298b6cfd633147aa156f7df86d82473acffd88c04c9c9b86d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rcl-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing message and service definitions for managing composable nodes in a container process.";
    license = with lib.licenses; [ asl20 ];
  };
}
