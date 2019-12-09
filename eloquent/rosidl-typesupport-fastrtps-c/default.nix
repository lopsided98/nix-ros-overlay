
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, fastrtps-cmake-module, ament-lint-common, ament-cmake, ament-lint-auto, rosidl-typesupport-fastrtps-cpp, rmw, fastrtps, rosidl-generator-c, fastcdr, rosidl-parser }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-fastrtps-c";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/eloquent/rosidl_typesupport_fastrtps_c/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "4cc0ba2549cb232f0e1b5b890baa75524db15fafbc567b552b9da82d53fcf0ce";
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
