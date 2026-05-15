
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-composition-interfaces";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/humble/composition_interfaces/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "04a7a3b86f2a9a5546df97e058a963536e2b3c66971aedc49a796a49b8d355f2";
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
