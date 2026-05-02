
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, cx-utils, pluginlib, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-cx-plugin";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_plugin/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "d1bbb4c14833c9d865e5530bb99f15e4f5862bc85c632fc649a85329fb6ba38b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clips-vendor cx-utils pluginlib rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Base class for CLIPS plugins";
    license = with lib.licenses; [ asl20 ];
  };
}
