
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, rosidl-generator-cpp, fastrtps-cmake-module, ament-lint-common, ament-cmake, ament-lint-auto, rmw, fastrtps, rosidl-generator-c, fastcdr, rosidl-parser }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-typesupport-fastrtps-cpp";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/eloquent/rosidl_typesupport_fastrtps_cpp/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "d7e594e77615177a33e67353fe17ad1d71db301a31898829f34f513497b78c62";
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
