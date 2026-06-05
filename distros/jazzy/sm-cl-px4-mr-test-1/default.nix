
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_px4_msgs, ament-cmake, cl-px4-mr, cl-ros2-timer, rclcpp, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-cl-px4-mr-test-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_cl_px4_mr_test_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "5bef1f8aec697fbdf89a8c2d1f95747140c08d2c85a6aea0787a292416af3ab0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_px4_msgs cl-px4-mr cl-ros2-timer rclcpp smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SMACC2 test state machine for cl_px4_mr multirotor client";
    license = with lib.licenses; [ asl20 ];
  };
}
