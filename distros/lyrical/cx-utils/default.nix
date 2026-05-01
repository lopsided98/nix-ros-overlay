
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, fmt, rclcpp, spdlog }:
buildRosPackage {
  pname = "ros-lyrical-cx-utils";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_utils/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "6d07c0b8cffbec146b7c69113059c76112331262592dd3214b6a4ad2f269b7a4";
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
