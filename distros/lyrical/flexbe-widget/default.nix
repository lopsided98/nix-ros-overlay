
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, launch-ros, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-flexbe-widget";
  version = "4.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/lyrical/flexbe_widget/4.1.4-1.tar.gz";
    name = "4.1.4-1.tar.gz";
    sha256 = "c9085afc59d40c5ce75f4974c7a4855850c79b1d9c9b3830b03602ee1d15145f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard launch-ros rclpy std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "flexbe_widget implements some smaller scripts for the behavior engine.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
