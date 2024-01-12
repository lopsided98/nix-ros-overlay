
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy, social-nav-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-social-nav-util";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/social_nav_ros-release/archive/release/humble/social_nav_util/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d5a5498d0154ae39f5df313f236ae47c73abe588d29ea3a86a25a370fae8fae1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy social-nav-msgs visualization-msgs ];

  meta = {
    description = ''Utilities for social navigation work'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
