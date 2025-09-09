
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, cx-utils, pluginlib, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-cx-plugin";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_plugin/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "2937a12f63fa0cccac5a3dc832ba567bc6f67f7bf47a56a5c9f8773a88df5b6f";
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
