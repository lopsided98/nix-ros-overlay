
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, fastrtps, rmw-fastrtps-shared-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, ament-cmake-ros, fastcdr, ament-lint-auto, rcutils, fastrtps-cmake-module, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rmw-fastrtps-dynamic-cpp";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/crystal/rmw_fastrtps_dynamic_cpp/0.6.2-0.tar.gz;
    sha256 = "1213ab6b6f2916ca6c8718ceb31aaf58c8434a8525e26af9313b99e1f3ba6e3e";
  };

  buildInputs = [ fastrtps rmw-fastrtps-shared-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp fastcdr rcutils fastrtps-cmake-module rmw rosidl-generator-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fastrtps rmw-fastrtps-shared-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp fastcdr rcutils fastrtps-cmake-module rmw rosidl-generator-c ];
  nativeBuildInputs = [ fastrtps-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Implement the ROS middleware interface using eProsima FastRTPS  static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
