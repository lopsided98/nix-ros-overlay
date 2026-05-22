
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-agnocast-ioctl-wrapper";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_ioctl_wrapper/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "8def82fa91f481483fdcd941d877bca00bef7088232cb3b22427caa41b3c3f38";
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
