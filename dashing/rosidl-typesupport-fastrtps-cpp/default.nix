
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, rosidl-typesupport-interface, ament-lint-common, fastrtps, rosidl-cmake, rosidl-parser, fastcdr, ament-lint-auto, fastrtps-cmake-module, rmw, rosidl-generator-c }:
buildRosPackage rec {
  pname = "ros-dashing-rosidl-typesupport-fastrtps-cpp";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/dashing/rosidl_typesupport_fastrtps_cpp/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "f3adda448b607e9e67710ad82dbb30e91ce8e9d5df285b3bf24f2d3a849f8d1e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp ament-cmake rosidl-typesupport-interface fastrtps rosidl-cmake rosidl-parser fastcdr fastrtps-cmake-module rmw rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-generator-cpp ament-cmake fastrtps rosidl-cmake fastcdr fastrtps-cmake-module rosidl-generator-c ];

  meta = {
    description = ''Generate the C++ interfaces for eProsima FastRTPS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
