
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, clips-vendor, cx-msgs, cx-plugin, lifecycle-msgs, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-cx-clips-env-manager";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/lyrical/cx_clips_env_manager/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "4b5887a95d82b01e607fe0370c054c1ff9d9e245936ffd05d4f4fbecae89ea3a";
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
