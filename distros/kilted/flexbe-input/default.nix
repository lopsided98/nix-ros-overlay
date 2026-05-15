
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-flexbe-input";
  version = "4.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/kilted/flexbe_input/4.1.3-1.tar.gz";
    name = "4.1.3-1.tar.gz";
    sha256 = "93aacace4ee9c55a844bb1e7f64db02d404ea44471befe484caf25ac6daee7fe";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_input enables to send data to onboard behavior when required.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
