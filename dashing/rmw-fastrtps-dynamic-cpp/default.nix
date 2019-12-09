
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, fastrtps-cmake-module, rmw-fastrtps-shared-cpp, ament-cmake, ament-lint-common, fastcdr, rcpputils, rosidl-typesupport-introspection-c, rosidl-typesupport-fastrtps-cpp, rosidl-typesupport-introspection-cpp, fastrtps, rmw, rosidl-generator-c, rosidl-typesupport-fastrtps-c, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rmw-fastrtps-dynamic-cpp";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/rmw_fastrtps_dynamic_cpp/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "b26142e34a61c6030a0ad8e412a955623b324c73b4892a565f04b1861f06f907";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils fastrtps-cmake-module rmw-fastrtps-shared-cpp fastcdr rcpputils rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rmw fastrtps rosidl-typesupport-fastrtps-cpp rosidl-generator-c rosidl-typesupport-fastrtps-c ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rcutils fastrtps-cmake-module rmw-fastrtps-shared-cpp ament-cmake fastcdr rcpputils rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp rmw fastrtps rosidl-typesupport-fastrtps-cpp rosidl-generator-c rosidl-typesupport-fastrtps-c ];
  nativeBuildInputs = [ fastrtps-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Implement the ROS middleware interface using eProsima FastRTPS  static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
