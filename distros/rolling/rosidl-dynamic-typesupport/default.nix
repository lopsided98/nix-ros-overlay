
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-rolling-rosidl-dynamic-typesupport";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/rolling/rosidl_dynamic_typesupport/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "c314e8f179a8b62e97fa7f36092f35adb2fd4bd32ce83d4d9679660afaf55b96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Unified serialization support interface for dynamic typesupport in C.";
    license = with lib.licenses; [ asl20 ];
  };
}
