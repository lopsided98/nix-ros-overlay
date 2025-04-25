
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/rolling/rosidl_dynamic_typesupport/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "eb8f1a1bfed413d790ea03664e3e4914e1124fd274734dea37fef22b3ab9ee76";
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
