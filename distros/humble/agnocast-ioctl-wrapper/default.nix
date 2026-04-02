
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-agnocast-ioctl-wrapper";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_ioctl_wrapper/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "198fb0bdbf8259d69e56198c28dd6a6d4cf9382ecad5b2bf6b49007d223d62e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The wrapper of ioctl for command line tool extension for Agnocast.";
    license = with lib.licenses; [ asl20 ];
  };
}
