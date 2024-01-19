
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-iron-realtime-tools";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/iron/realtime_tools/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "a358eac3cd28efb6b2c1a4ef2e754cb04497791b5bb2458ff42cf2646105c58f";
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
