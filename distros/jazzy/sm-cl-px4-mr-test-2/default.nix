
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_px4_msgs, ament-cmake, cl-px4-mr, cl-ros2-timer, rclcpp, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-cl-px4-mr-test-2";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_cl_px4_mr_test_2/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "bb994c4599e154e20987d5b019c2f2865be9437a45248d433462fdc7284148ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_px4_msgs cl-px4-mr cl-ros2-timer rclcpp smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SMACC2 test state machine for cl_px4_mr new behaviors (hold, yaw, altitude, waypoints, figure-8, barrel roll, return-to-home)";
    license = with lib.licenses; [ asl20 ];
  };
}
