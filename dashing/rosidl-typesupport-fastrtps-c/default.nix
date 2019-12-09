
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, fastrtps-cmake-module, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-typesupport-fastrtps-cpp, rmw, fastrtps, rosidl-generator-c, fastcdr, rosidl-parser }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-fastrtps-c";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/dashing/rosidl_typesupport_fastrtps_c/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "beb8ca1492e7e7d3856f2113811664d83e52cb79380c3e71a56429b825b25a1e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-typesupport-interface fastrtps-cmake-module ament-cmake rosidl-typesupport-fastrtps-cpp rmw fastrtps rosidl-generator-c fastcdr rosidl-parser ];
  nativeBuildInputs = [ rosidl-cmake fastrtps-cmake-module ament-cmake rosidl-typesupport-fastrtps-cpp fastrtps rosidl-generator-c fastcdr ];

  meta = {
    description = ''Generate the C interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
