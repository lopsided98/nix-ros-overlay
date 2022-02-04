
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, example-interfaces, launch-testing, osrf-testing-tools-cpp, rcl, rcutils, rosidl-generator-c, rosidl-typesupport-c, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rclc";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclc-release/archive/release/foxy/rclc/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "516a522d674cce7feedd4a63906bc43c370938bf95e33590905979e0c3683d82";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-c ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common example-interfaces launch-testing osrf-testing-tools-cpp std-msgs test-msgs ];
  propagatedBuildInputs = [ rcl rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
