
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-agnocast-ioctl-wrapper";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/jazzy/agnocast_ioctl_wrapper/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "1913258526d54f068eb0e68004047f64b11833761eb9f9e5c9c01e988588b81d";
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
