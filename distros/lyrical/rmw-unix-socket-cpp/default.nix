
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, fastcdr, rcpputils, rcutils, rmw, rosidl-runtime-c, rosidl-typesupport-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-lyrical-rmw-unix-socket-cpp";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_unix_socket_cpp-release/archive/release/lyrical/rmw_unix_socket_cpp/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "4d87bafac1352a0c8b03dca173c1b243c1cc472fa0eeacc97a98a97bf6f15aee";
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
