
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-python, ament-index-cpp, ament-index-python, auto-apms-interfaces, generate-parameter-library, pluginlib, rclcpp, rclcpp-action, rcpputils, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-auto-apms-util";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/rolling/auto_apms_util/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "eb7b554776ad4e1e22fc003a8dde469f891f161606746c18dc0cf5b9a6ef4831";
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
