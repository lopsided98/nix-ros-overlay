
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-internal-debug-msgs";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/humble/autoware_internal_debug_msgs/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "a2f52856c702320da7ab196feb06cb6d0be719c9e06a993392afbf040cf4d7fa";
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
