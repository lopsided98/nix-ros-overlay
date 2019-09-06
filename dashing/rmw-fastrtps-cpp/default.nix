
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-generator-cpp, ament-cmake, ament-lint-common, fastrtps, rmw-fastrtps-shared-cpp, rosidl-cmake, rosidl-typesupport-fastrtps-c, ament-cmake-ros, rosidl-typesupport-fastrtps-cpp, fastcdr, ament-lint-auto, rcutils, fastrtps-cmake-module, rmw, rosidl-generator-c }:
buildRosPackage rec {
  pname = "ros-dashing-rmw-fastrtps-cpp";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/rmw_fastrtps_cpp/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "047129cfbb56bdd0e08744c7f7c4992c6b768a4749fea055f32fb1ff86f60378";
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
