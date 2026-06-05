
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-lifecycle, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-cl-lifecycle-node";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_lifecycle_node/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "6a7231b05b922fe8fc715b7aebd62a834fb2e367ac06b25fa46f8bad01dfb834";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-lifecycle smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The cl_lifecycle_node package implements SMACC Action Client Plugin for the ROS Navigation State - move_base node.  Developed by Reel Robotics.";
    license = with lib.licenses; [ asl20 ];
  };
}
