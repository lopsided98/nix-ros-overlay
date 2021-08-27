
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, python3Packages, rclpy, rosapi, rosbridge-library, rosbridge-msgs }:
buildRosPackage {
  pname = "ros-galactic-rosbridge-server";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/galactic/rosbridge_server/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "f481d7c537fbd6185730a88815a99469bfb67b13535db08617e4c9aaef8ffd9b";
  };

  buildType = "ament_cmake";
  checkInputs = [ launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros python3Packages.autobahn ];
  propagatedBuildInputs = [ python3Packages.tornado python3Packages.twisted rclpy rosapi rosbridge-library rosbridge-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''A WebSocket interface to rosbridge.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
