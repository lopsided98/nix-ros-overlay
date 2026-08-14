
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-mypy, ament-cmake-python, ament-cmake-ros, example-interfaces, launch, launch-ros, launch-testing-ament-cmake, python3Packages, rcl-interfaces, rclpy, rosapi, rosbridge-library, rosbridge-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-rosbridge-server";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/kilted/rosbridge_server/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "c5763dbf8db476f5c6ff06fd31b5426ba5e98e1f541b60682a022390d38d36f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ action-msgs ament-cmake-mypy example-interfaces launch launch-ros launch-testing-ament-cmake python3Packages.autobahn python3Packages.twisted rcl-interfaces std-srvs ];
  propagatedBuildInputs = [ python3Packages.tornado rclpy rosapi rosbridge-library rosbridge-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "A WebSocket interface to rosbridge.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
