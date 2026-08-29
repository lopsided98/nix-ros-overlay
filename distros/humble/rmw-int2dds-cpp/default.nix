
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, int2dds-ffi-vendor, rcpputils, rcutils, rmw, rmw-dds-common, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-introspection-cpp, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-humble-rmw-int2dds-cpp";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_int2dds-release/archive/release/humble/rmw_int2dds_cpp/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2ccd6d31de238cda75058ad7d3b16793af5d3d1550ab88ecb84f99f21de063d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-lint-auto ament-lint-common test-msgs ];
  propagatedBuildInputs = [ int2dds-ffi-vendor rcpputils rcutils rmw rmw-dds-common rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp rosidl-typesupport-introspection-c rosidl-typesupport-introspection-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "ROS 2 middleware (RMW) implementation that binds the int2DDS DDS/RTPS
    middleware to the ROS 2 rmw interface.";
    license = with lib.licenses; [ asl20 ];
  };
}
