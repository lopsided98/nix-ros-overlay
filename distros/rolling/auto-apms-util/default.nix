
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-python, ament-index-cpp, ament-index-python, auto-apms-interfaces, generate-parameter-library, pluginlib, rclcpp, rclcpp-action, rcpputils, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-auto-apms-util";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/rolling/auto_apms_util/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "c570199e3e64ad2fe21465d62f0b79cb843890e8a57787bf5670e342f7d9fafd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest auto-apms-interfaces ];
  propagatedBuildInputs = [ ament-index-cpp ament-index-python generate-parameter-library pluginlib rclcpp rclcpp-action rcpputils yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "AutoAPMS utilities";
    license = with lib.licenses; [ asl20 ];
  };
}
