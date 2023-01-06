
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-bno055";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/bno055-release/archive/release/foxy/bno055/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "2fa11534723964ea51cb8f3ecff54480fc62241b367feb845d4630926cd6226c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces python3Packages.pyserial rclpy std-msgs ];

  meta = {
    description = ''Bosch BNO055 IMU driver for ROS2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
