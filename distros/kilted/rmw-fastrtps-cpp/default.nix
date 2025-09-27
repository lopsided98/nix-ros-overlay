
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, fastcdr, fastdds, osrf-testing-tools-cpp, rcpputils, rcutils, rmw, rmw-dds-common, rmw-fastrtps-shared-cpp, rosidl-dynamic-typesupport, rosidl-dynamic-typesupport-fastrtps, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-fastrtps-c, rosidl-typesupport-fastrtps-cpp, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-kilted-rmw-fastrtps-cpp";
  version = "9.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/kilted/rmw_fastrtps_cpp/9.3.3-1.tar.gz";
    name = "9.3.3-1.tar.gz";
    sha256 = "dbf624b4aed3cd7110c5f854d995ae77e2b0e5f8e343c144296bac8693ec257e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp test-msgs ];
  propagatedBuildInputs = [ ament-cmake fastcdr fastdds rcpputils rcutils rmw rmw-dds-common rmw-fastrtps-shared-cpp rosidl-dynamic-typesupport rosidl-dynamic-typesupport-fastrtps rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-fastrtps-c rosidl-typesupport-fastrtps-cpp tracetools ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Implement the ROS middleware interface using eProsima FastRTPS static code generation in C++.";
    license = with lib.licenses; [ asl20 ];
  };
}
