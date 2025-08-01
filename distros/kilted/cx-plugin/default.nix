
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, cx-utils, pluginlib, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-kilted-cx-plugin";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_plugin/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2ed6f1e42a60fe810bef64c4a0ece70ccd67d30a0c55f411a39f7a0077210048";
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
