
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-internal-debug-msgs";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/jazzy/autoware_internal_debug_msgs/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "543e8587e50e0c72967f7a9a32b338d2e3051ee8a2408cbda347adf048969885";
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
