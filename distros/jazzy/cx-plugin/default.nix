
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clips-vendor, cx-utils, pluginlib, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-cx-plugin";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/jazzy/cx_plugin/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "5a1228d59c25b8e7613202452196e647c340a4f9a77cc77e528f4f2f4fa65d62";
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
