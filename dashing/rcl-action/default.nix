
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, rcl, ament-lint-common, test-msgs, ament-cmake-gtest, osrf-testing-tools-cpp, rmw, rosidl-generator-c, action-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rcl-action";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl_action/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "782ae4c3e5b4e96398c1bb4247d32f0a0d8683959df623c8316d543b85a21662";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rcl rmw rosidl-generator-c action-msgs ];
  checkInputs = [ ament-lint-common ament-lint-auto test-msgs osrf-testing-tools-cpp ament-cmake-gtest ];
  propagatedBuildInputs = [ rcutils rcl rmw rosidl-generator-c action-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based ROS action implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
