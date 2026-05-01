
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-std-msgs";
  version = "5.9.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/lyrical/std_msgs/5.9.2-3.tar.gz";
    name = "5.9.2-3.tar.gz";
    sha256 = "e9cd92979f09eaddf00cad4ebe600f6e93c502690e18826f402e0c9a69995b71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some standard message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
