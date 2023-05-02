
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, python3Packages, rclpy, rosapi, rosbridge-library, rosbridge-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-rosbridge-server";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosbridge_server/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "9585966ad47f247b50a6b863533f83d640800feb62d71434325c6de19557927d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros python3Packages.autobahn std-srvs ];
  propagatedBuildInputs = [ python3Packages.tornado python3Packages.twisted rclpy rosapi rosbridge-library rosbridge-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
