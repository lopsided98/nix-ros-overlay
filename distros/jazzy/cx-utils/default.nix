
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, fmt, rclcpp, spdlog }:
buildRosPackage {
  pname = "ros-jazzy-cx-utils";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_utils/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "8b2d797a98d587aa283ec50ffb051def56bd10b9fdc05d0f46731cae4cd72f5c";
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
