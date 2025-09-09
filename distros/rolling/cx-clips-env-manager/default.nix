
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, clips-vendor, cx-msgs, cx-plugin, lifecycle-msgs, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-cx-clips-env-manager";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_clips_env_manager/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "3e130fb0ca7af791843c59036fab20107b1d3bd06f374210238d70a83e464140";
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
