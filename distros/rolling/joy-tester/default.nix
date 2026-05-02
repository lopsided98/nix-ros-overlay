
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-joy-tester";
  version = "0.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joy_tester-release/archive/release/rolling/joy_tester/0.0.2-4.tar.gz";
    name = "0.0.2-4.tar.gz";
    sha256 = "ad848cea3569f7c4678777f943fc7399a21d7ad045f077b66b9be8f2494abfbb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.tkinter rclpy sensor-msgs ];

  meta = {
    description = "Simple GUI tool for testing joysticks/gamepads";
    license = with lib.licenses; [ asl20 ];
  };
}
