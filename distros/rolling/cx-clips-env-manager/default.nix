
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, clips-vendor, cx-msgs, cx-plugin, lifecycle-msgs, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-cx-clips-env-manager";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_clips_env_manager/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "f6478f58e7c28a5d48f8c916da85c4814d6562f0eac9fbbd9d4421277058fcb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bond bondcpp clips-vendor cx-msgs cx-plugin lifecycle-msgs pluginlib rclcpp rclcpp-components rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Lifecycle node for managing CLIPS environments";
    license = with lib.licenses; [ asl20 ];
  };
}
