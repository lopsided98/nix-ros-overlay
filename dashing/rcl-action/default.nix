
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, test-msgs, ament-cmake-gtest, action-msgs, ament-cmake-ros, rcl, ament-lint-auto, rcutils, osrf-testing-tools-cpp, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rcl-action";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl_action/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "d777fbfc3657bf745bddccfab997dedd88c0f3c4e3de5d360abe2d94ee1d1bf0";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl action-msgs rcutils rmw rosidl-generator-c ];
  checkInputs = [ ament-lint-common test-msgs ament-cmake-gtest ament-lint-auto osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ rcl action-msgs rcutils rmw rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based ROS action implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
