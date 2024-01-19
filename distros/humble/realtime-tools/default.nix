
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-humble-realtime-tools";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/humble/realtime_tools/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "cc3b7aabeffe94904d77c6c3900158fd6e7e8f437584edcbe99bd32f602feeb7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock test-msgs ];
  propagatedBuildInputs = [ ament-cmake rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ "3-Clause-BSD" ];
  };
}
