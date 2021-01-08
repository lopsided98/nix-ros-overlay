
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages, rclpy, rosapi, rosauth, rosbridge-library, rosbridge-msgs }:
buildRosPackage {
  pname = "ros-dashing-rosbridge-server";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/dashing/rosbridge_server/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "d66f44878b5c69566d65ce0fd96923444b7d63cc4dacdded67cd883ea9894f19";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ python3Packages.tornado python3Packages.twisted rclpy rosapi rosauth rosbridge-library rosbridge-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
