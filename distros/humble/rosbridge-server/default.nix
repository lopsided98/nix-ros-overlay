
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, python3Packages, rclpy, rosapi, rosbridge-library, rosbridge-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rosbridge-server";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_server/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "c1344e1d9b2f593e9bce6bff69e8cb0518eef3d11781af626e049f67fc572355";
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
