
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, example-interfaces, launch, launch-ros, launch-testing, launch-testing-ament-cmake, launch-testing-ros, python3Packages, rclpy, rosapi, rosbridge-library, rosbridge-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-iron-rosbridge-server";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/iron/rosbridge_server/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "69ddfa20f80beddc9e02df6a83fecb28b59352f1914a9ee7ba3488c85c37d643";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ example-interfaces launch launch-ros launch-testing launch-testing-ament-cmake launch-testing-ros python3Packages.autobahn std-srvs ];
  propagatedBuildInputs = [ python3Packages.tornado python3Packages.twisted rclpy rosapi rosbridge-library rosbridge-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "A WebSocket interface to rosbridge.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
