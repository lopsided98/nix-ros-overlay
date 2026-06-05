
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, angles, bond, nav-2d-utils, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp-action, slam-toolbox, smacc2, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-cl-nav2z";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_nav2z/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "6dd68b415bd1dd021135392990a705fc452f992a1dc6496f4119e71933f4631b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp angles bond nav-2d-utils nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp-action slam-toolbox smacc2 std-msgs std-srvs tf2-geometry-msgs tf2-ros yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The cl_nav2z package";
    license = with lib.licenses; [ asl20 ];
  };
}
