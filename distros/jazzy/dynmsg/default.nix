
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, rcutils, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, std-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-dynmsg";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamic_message_introspection-release/archive/release/jazzy/dynmsg/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "998fc2b84088de1eced44f10a5053a4165f37fbaa0b4cf0e433e7be9e2bda0cd";
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
