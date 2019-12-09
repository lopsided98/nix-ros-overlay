
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, rosidl-generator-cpp, fastrtps-cmake-module, ament-lint-common, ament-cmake, ament-lint-auto, rmw, fastrtps, rosidl-generator-c, fastcdr, rosidl-parser }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-fastrtps-cpp";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/crystal/rosidl_typesupport_fastrtps_cpp/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "2daa01538507dddde0fb0cae9725c2a4410ffa22a8939dff2c562c4a6956a93e";
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
