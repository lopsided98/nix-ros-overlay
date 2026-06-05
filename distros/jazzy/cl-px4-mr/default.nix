
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_px4_msgs, ament-cmake, rclcpp, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-cl-px4-mr";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_px4_mr/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "991142bc4406304081894c3e9f9b69fe1bcf737aab0e533220b88b6b08d1c4ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ _unresolved_px4_msgs rclcpp smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SMACC2 client library for PX4 multirotor control via ROS 2 XRCE-DDS";
    license = with lib.licenses; [ asl20 ];
  };
}
