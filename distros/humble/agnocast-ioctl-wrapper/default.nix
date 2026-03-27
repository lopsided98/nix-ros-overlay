
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-humble-agnocast-ioctl-wrapper";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/agnocast-release/archive/release/humble/agnocast_ioctl_wrapper/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "3a8e8376508285ad858c16b22be6227cf01d729fe279b2ae1f185887cd850397";
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
