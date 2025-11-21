
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-mypy, ament-cmake-python, example-interfaces, launch, launch-ros, launch-testing-ament-cmake, python3Packages, rcl-interfaces, rclpy, rosapi, rosbridge-library, rosbridge-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-rosbridge-server";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/kilted/rosbridge_server/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "0cf3e43c5767350d39e82f0208275c92cde4a6d0546fbb342317a2e7ed301edc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ action-msgs ament-cmake-mypy example-interfaces launch launch-ros launch-testing-ament-cmake python3Packages.autobahn python3Packages.twisted rcl-interfaces std-srvs ];
  propagatedBuildInputs = [ python3Packages.tornado rclpy rosapi rosbridge-library rosbridge-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A WebSocket interface to rosbridge.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
