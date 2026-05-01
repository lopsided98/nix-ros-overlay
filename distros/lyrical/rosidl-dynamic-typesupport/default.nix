
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-dynamic-typesupport";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dynamic_typesupport-release/archive/release/lyrical/rosidl_dynamic_typesupport/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "676340b4327116ffd3296d78428bd39a1b5691b1dd86c2b88221441eb70d68cc";
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
