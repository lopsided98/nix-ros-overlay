
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, fmt, rclcpp, spdlog }:
buildRosPackage {
  pname = "ros-kilted-cx-utils";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_utils/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8cbfc0cc92188ca4538c0182a94f8dc0ddfb8877eceeab63dfc609ed1360f4d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clips-vendor fmt rclcpp spdlog ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utilities for the ROS2 CLIPS-Executive";
    license = with lib.licenses; [ asl20 ];
  };
}
