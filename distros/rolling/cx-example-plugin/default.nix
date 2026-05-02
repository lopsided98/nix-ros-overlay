
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clips-vendor, cx-plugin, cx-utils, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-cx-example-plugin";
  version = "0.1.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/rolling/cx_example_plugin/0.1.3-2.tar.gz";
    name = "0.1.3-2.tar.gz";
    sha256 = "b97ce44e412067a306a9788054cda1d4308b6ba3e0d56e916d73cf5d2c9d76f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clips-vendor cx-plugin cx-utils pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLIPS plugin example that does not actually do anything and rather serves as boilerplate";
    license = with lib.licenses; [ asl20 ];
  };
}
