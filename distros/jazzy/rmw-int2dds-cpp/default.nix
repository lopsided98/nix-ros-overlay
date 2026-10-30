
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-ros, ament-cmake-test, ament-lint-auto, ament-lint-common, int2dds-ffi-vendor, rcutils, rmw, rmw-dds-common, rosidl-dynamic-typesupport, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmw-int2dds-cpp";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_int2dds-release/archive/release/jazzy/rmw_int2dds_cpp/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b3bfbef0223ea692dd96270525b7d8081887d8361664086d1ffe4e3f0ef3b453";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-cmake-test ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ int2dds-ffi-vendor rcutils rmw rmw-dds-common rosidl-dynamic-typesupport rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "ROS 2 middleware (RMW) implementation that binds the int2DDS DDS/RTPS
    middleware to the ROS 2 rmw interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
