
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-internal-debug-msgs";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/humble/autoware_internal_debug_msgs/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "2fb8a975d0af5c13a158a1d14ff6d4bc0f97fa32f2afd1ddc4512c37081d8d9a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware internal debug messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
