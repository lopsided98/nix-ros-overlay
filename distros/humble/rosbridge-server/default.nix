
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, python3Packages, rclpy, rosapi, rosbridge-library, rosbridge-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rosbridge-server";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_server/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "2a3abdc3c95467dce6315f36ccd2647858b16a84f4bb637dea2da1b2938eb385";
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
