
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rclpy, social-nav-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-social-nav-util";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/social_nav_ros-release/archive/release/iron/social_nav_util/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "b4b0fd36f65c077d852e0e19bfa4b6baec9940d2144d194776fb3e648f157d3c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs rclpy social-nav-msgs visualization-msgs ];

  meta = {
    description = ''Utilities for social navigation work'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
