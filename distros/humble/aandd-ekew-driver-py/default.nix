
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, weight-scale-interfaces }:
buildRosPackage {
  pname = "ros-humble-aandd-ekew-driver-py";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/TechMagicKK/aandd_ekew_driver_py-release/archive/release/humble/aandd_ekew_driver_py/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "24e36b1a642e89fe9dbabe70bf616a1d33e0a4a6dd917c8952cdcb9d2e24bf97";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs python3Packages.pyserial rclpy weight-scale-interfaces ];

  meta = {
    description = ''aandd ek/ew series driver python package'';
    license = with lib.licenses; [ asl20 ];
  };
}
