
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, ament-lint-common, fastrtps, rmw-fastrtps-shared-cpp, rosidl-cmake, rosidl-typesupport-fastrtps-c, ament-cmake-ros, rosidl-typesupport-fastrtps-cpp, fastcdr, ament-lint-auto, rcutils, fastrtps-cmake-module, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rmw-fastrtps-cpp";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/rmw_fastrtps_cpp/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "7d1cd50cd401524f95ed5a9461ef765dd2d1ee51de855e39502258c3e763f265";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp fastrtps rmw-fastrtps-shared-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp fastcdr rcutils fastrtps-cmake-module rmw rosidl-generator-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-generator-cpp ament-cmake fastrtps rmw-fastrtps-shared-cpp rosidl-cmake rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp fastcdr rcutils fastrtps-cmake-module rmw rosidl-generator-c ];
  nativeBuildInputs = [ rosidl-cmake fastrtps-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Implement the ROS middleware interface using eProsima FastRTPS static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
