
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, fastcdr, fastrtps, fastrtps-cmake-module, rcutils, rmw, rmw-fastrtps-shared-cpp, rosidl-cmake, rosidl-generator-c, rosidl-generator-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp }:
buildRosPackage {
  pname = "ros-crystal-rmw-fastrtps-cpp";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/crystal/rmw_fastrtps_cpp/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "309efba86d62ecbb153d05b71b10b362ab9f89b52f4b324a885c861000cc1f01";
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
