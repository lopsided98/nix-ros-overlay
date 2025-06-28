
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-cmake, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-kilted-rmw-desert";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_desert-release/archive/release/kilted/rmw_desert/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "41a9bb63cdb5b27ae622a4d4c5aa551f1e7acceecf1ca3e7c23a54d49be67cd9";
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
