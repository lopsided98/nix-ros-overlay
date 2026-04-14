
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-cmake-python, ament-index-cpp, ament-index-python, auto-apms-interfaces, generate-parameter-library, pluginlib, rclcpp, rclcpp-action, rcpputils, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-auto-apms-util";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoapms-release/archive/release/jazzy/auto_apms_util/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "8251cdf33b70ea8b39c5ab440df3666b43178bcace106ff47ccea2b37e7c231b";
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
