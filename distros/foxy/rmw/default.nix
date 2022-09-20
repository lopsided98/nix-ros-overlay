
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-cmake-version, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcutils, rosidl-runtime-c }:
buildRosPackage {
  pname = "ros-foxy-rmw";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/foxy/rmw/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "1adbf739200ea200e3a9ddb44378055f752c898a4e0579e4010948f684ee6a3e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ament-cmake-version ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ rcutils rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-version ];

  meta = {
    description = ''Contains the ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
