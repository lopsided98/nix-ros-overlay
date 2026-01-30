
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-agnocast-ioctl-wrapper";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_ioctl_wrapper/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "0aad2248b92f43c3e4559963a029dee12ba705795c06baf95b8818c1f2e8368d";
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
