
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-cmake, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-rolling-rmw-desert";
  version = "4.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_desert-release/archive/release/rolling/rmw_desert/4.0.1-2.tar.gz";
    name = "4.0.1-2.tar.gz";
    sha256 = "932b98eab393aa3d6874dbe52900025fc736d432f0947ab3be7362c4f395a27f";
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
