
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bond, bondcpp, clips-vendor, cx-msgs, cx-plugin, lifecycle-msgs, pluginlib, rclcpp, rclcpp-components, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-cx-clips-env-manager";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_clips_env_manager/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "7b4cfb27280d288a9dd344fc9ef8a495c78ade6a9505953baf68367fd50a9ab2";
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
