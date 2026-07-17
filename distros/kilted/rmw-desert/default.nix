
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-cmake, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-kilted-rmw-desert";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_desert-release/archive/release/kilted/rmw_desert/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "58417098de9534e8eae6d7b1470092ca7b0c64a66465d110f1c3ddc06bd684fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  propagatedBuildInputs = [ ament-cmake rcpputils rcutils rmw rmw-dds-common rosidl-cmake rosidl-runtime-c rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core rosidl-cmake ];

  meta = {
    description = "Implement the ROS middleware interface using the DESERT protocol stack for underwater communications.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
