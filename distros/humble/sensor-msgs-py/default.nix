
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-sensor-msgs-py";
  version = "4.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/sensor_msgs_py/4.2.3-1.tar.gz";
    name = "4.2.3-1.tar.gz";
    sha256 = "0ed7f92f852278fd1af86c6868432d6855b2931ee4db7435d47e757ec2804940";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs ];

  meta = {
    description = ''A package for easy creation and reading of PointCloud2 messages in Python.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
