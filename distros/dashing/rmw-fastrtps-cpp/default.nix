
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rmw, rmw-fastrtps-shared-cpp, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp }:
buildRosPackage {
  pname = "ros-dashing-rmw-fastrtps-cpp";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/rmw_fastrtps_cpp/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "496f892eebf880a6def1cd26a111fe2ea8df6d9dab163462325f6baf0461e3d4";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastrtps fastrtps-cmake-module rcutils rmw rmw-fastrtps-shared-cpp rosidl-cmake rosidl-generator-c rosidl-generator-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp ];
  nativeBuildInputs = [ ament-cmake-ros fastrtps-cmake-module rosidl-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using eProsima FastRTPS static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
