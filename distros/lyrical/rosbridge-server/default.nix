
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-mypy, ament-cmake-python, ament-cmake-ros, example-interfaces, launch, launch-ros, launch-testing-ament-cmake, python3Packages, rcl-interfaces, rclpy, rosapi, rosbridge-library, rosbridge-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-rosbridge-server";
  version = "4.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/lyrical/rosbridge_server/4.1.0-3.tar.gz";
    name = "4.1.0-3.tar.gz";
    sha256 = "a4500af87423c09c3ba25e59da61f58ecfa3d3f4659ab400ab4e4e02c2669447";
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
