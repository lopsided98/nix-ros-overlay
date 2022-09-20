
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, osrf-testing-tools-cpp, rcl, rcutils, rmw, rmw-implementation-cmake, rosidl-runtime-c, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-rcl-action";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/foxy/rcl_action/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "a9b503b6e3a4ba56dc7836e74df736a71db71b209c651aaa319cbdcc472e1479";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp rmw-implementation-cmake test-msgs ];
  propagatedBuildInputs = [ action-msgs rcl rcutils rmw rosidl-runtime-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing a C-based ROS action implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
