
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rcutils, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-dynmsg";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamic_message_introspection-release/archive/release/rolling/dynmsg/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "95eb5267a0e8c501de7bc4a6fe24f7ea552d4cc98b5cc8595066a97e300288be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common std-msgs ];
  propagatedBuildInputs = [ ament-cmake-ros-core rcutils rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Introspection tools for message to/from YAML conversions";
    license = with lib.licenses; [ asl20 ];
  };
}
