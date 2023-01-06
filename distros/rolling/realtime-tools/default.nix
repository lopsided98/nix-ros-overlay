
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-realtime-tools";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/realtime_tools-release/archive/release/rolling/realtime_tools/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "3cbfcf620ba7bb222a9289f097b172bb105c56c2078af6a8522416dfefb8f828";
  };

  buildType = "ament_cmake";
  checkInputs = [ rclcpp-action test-msgs ];
  propagatedBuildInputs = [ ament-cmake rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ "3-Clause-BSD" ];
  };
}
