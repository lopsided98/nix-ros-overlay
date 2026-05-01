
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-bno055";
  version = "0.5.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bno055-release/archive/release/lyrical/bno055/0.5.0-4.tar.gz";
    name = "0.5.0-4.tar.gz";
    sha256 = "95588d22ad47286808d6d293f23b66f00bb488bf5450a7770f5a1a19536ff8f5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.i2c-tools python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = "Bosch BNO055 IMU driver for ROS2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
