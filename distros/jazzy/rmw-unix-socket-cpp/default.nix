
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fastcdr, rcpputils, rcutils, rmw, rosidl-runtime-c, rosidl-typesupport-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-jazzy-rmw-unix-socket-cpp";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_unix_socket_cpp-release/archive/release/jazzy/rmw_unix_socket_cpp/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "f228830ae7639ffb31c8ca68c12abb3bb142be000a7f0e589bddb856a0e1b5dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest rosidl-typesupport-cpp test-msgs ];
  propagatedBuildInputs = [ fastcdr rcpputils rcutils rmw rosidl-runtime-c rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Lightweight RMW implementation for ROS 2 using Unix domain sockets.
    Designed for localhost-only communication with minimal resource usage.";
    license = with lib.licenses; [ asl20 ];
  };
}
