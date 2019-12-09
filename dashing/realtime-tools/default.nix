
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-action, ament-cmake, test-msgs, ament-cmake-gmock, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-realtime-tools";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/dashing/realtime_tools/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "2f6332c3a982288e17fabb8a5bfde604ac8e03fc16b392710093bab1bd1ef208";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action rclcpp ];
  checkInputs = [ ament-cmake-gmock test-msgs rclcpp-action ];
  propagatedBuildInputs = [ rclcpp-action rclcpp ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
