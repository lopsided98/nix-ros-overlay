
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, clips-vendor, cx-msgs, cx-plugin, lifecycle-msgs, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-cx-clips-env-manager";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_clips_env_manager/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "3d1e9266a57da1c7528d63da56571d8975c58517b901ca85a850d55f839647e2";
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
