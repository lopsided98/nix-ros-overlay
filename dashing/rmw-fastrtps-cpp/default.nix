
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rmw, rmw-fastrtps-shared-cpp, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp }:
buildRosPackage {
  pname = "ros-dashing-rmw-fastrtps-cpp";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/rmw_fastrtps_cpp/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "7d1cd50cd401524f95ed5a9461ef765dd2d1ee51de855e39502258c3e763f265";
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
