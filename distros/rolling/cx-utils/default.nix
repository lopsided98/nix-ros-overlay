
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, fmt, rclcpp, spdlog }:
buildRosPackage {
  pname = "ros-rolling-cx-utils";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_utils/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "f1d1f3da4a381157221b3fc269dab74c11beaad1f58595aaa1357fa521000ca2";
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
