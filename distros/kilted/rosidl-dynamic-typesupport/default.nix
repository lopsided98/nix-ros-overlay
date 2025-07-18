
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-kilted-rosidl-dynamic-typesupport";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/kilted/rosidl_dynamic_typesupport/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "5e2b031eba9f8245dc8d983be7da6cfda46c478cd23cfb47e4a1b053615aee70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  propagatedBuildInputs = [ rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Unified serialization support interface for dynamic typesupport in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
