
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-cmake, rosidl-runtime-c, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rmw-desert";
  version = "4.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_desert-release/archive/release/lyrical/rmw_desert/4.0.3-2.tar.gz";
    name = "4.0.3-2.tar.gz";
    sha256 = "a15677472045a17fd7408b3bd5177ce74888c322deb66d10141aa9a9ca22ee07";
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
