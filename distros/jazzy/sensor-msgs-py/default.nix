
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-sensor-msgs-py";
  version = "5.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/jazzy/sensor_msgs_py/5.3.7-1.tar.gz";
    name = "5.3.7-1.tar.gz";
    sha256 = "98ca9adf90592fbe39c71b31b8acd03bf962893e62e2625e38c63661e8d8452c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy sensor-msgs std-msgs ];

  meta = {
    description = "A package for easy creation and reading of PointCloud2 messages in Python.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
