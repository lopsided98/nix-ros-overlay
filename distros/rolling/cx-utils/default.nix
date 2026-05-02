
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, fmt, rclcpp, spdlog }:
buildRosPackage {
  pname = "ros-rolling-cx-utils";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_utils/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "d2daf290f02c7ccf969f554837b62d44724765f6a67260e1f26d967af1925f0c";
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
