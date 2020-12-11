
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rcpputils, rcutils, rmw, rmw-fastrtps-shared-cpp, rosidl-generator-c, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rmw-fastrtps-dynamic-cpp";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/eloquent/rmw_fastrtps_dynamic_cpp/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "056f3ef4e1453e3c0572e46307733ec8370a0493d0900f3278ba5009aea492f4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcpputils rcutils rmw rmw-fastrtps-shared-cpp rosidl-generator-c rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp ];
  nativeBuildInputs = [ ament-cmake-ros fastrtps-cmake-module ];

  meta = {
    description = ''Implement the ROS middleware interface using eProsima FastRTPS  static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
