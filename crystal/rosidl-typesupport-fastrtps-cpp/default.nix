
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, rosidl-typesupport-interface, ament-lint-common, fastrtps, rosidl-cmake, rosidl-parser, fastcdr, ament-lint-auto, fastrtps-cmake-module, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-typesupport-fastrtps-cpp";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/crystal/rosidl_typesupport_fastrtps_cpp/0.6.1-0.tar.gz;
    sha256 = "2daa01538507dddde0fb0cae9725c2a4410ffa22a8939dff2c562c4a6956a93e";
  };

  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw rosidl-typesupport-interface rosidl-parser ];
  nativeBuildInputs = [ rosidl-generator-cpp ament-cmake fastrtps rosidl-cmake fastcdr fastrtps-cmake-module rosidl-generator-c ];

  meta = {
    description = ''Generate the C++ interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
