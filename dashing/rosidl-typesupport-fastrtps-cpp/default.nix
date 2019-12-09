
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, rosidl-generator-cpp, fastrtps-cmake-module, ament-lint-common, ament-cmake, ament-lint-auto, rmw, fastrtps, rosidl-generator-c, fastcdr, rosidl-parser }:
buildRosPackage {
  pname = "ros-dashing-rosidl-typesupport-fastrtps-cpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/dashing/rosidl_typesupport_fastrtps_cpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "f3adda448b607e9e67710ad82dbb30e91ce8e9d5df285b3bf24f2d3a849f8d1e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-typesupport-interface rosidl-generator-cpp fastrtps-cmake-module ament-cmake rmw fastrtps rosidl-generator-c fastcdr rosidl-parser ];
  nativeBuildInputs = [ rosidl-cmake rosidl-generator-cpp fastrtps-cmake-module ament-cmake fastrtps rosidl-generator-c fastcdr ];

  meta = {
    description = ''Generate the C++ interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
