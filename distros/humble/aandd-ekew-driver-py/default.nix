
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, weight-scale-interfaces }:
buildRosPackage {
  pname = "ros-humble-aandd-ekew-driver-py";
  version = "0.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aandd_ekew_driver_py-release/archive/release/humble/aandd_ekew_driver_py/0.0.2-3.tar.gz";
    name = "0.0.2-3.tar.gz";
    sha256 = "60582a27125ea1fa0ab6d964d1ae7e23fd0e4a65ad2a9ce27a375def1faad6b4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs python3Packages.pyserial rclpy weight-scale-interfaces ];

  meta = {
    description = ''aandd ek/ew series driver python package'';
    license = with lib.licenses; [ asl20 ];
  };
}
