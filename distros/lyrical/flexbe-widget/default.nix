
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, launch-ros, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-flexbe-widget";
  version = "4.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/lyrical/flexbe_widget/4.0.3-3.tar.gz";
    name = "4.0.3-3.tar.gz";
    sha256 = "9cf74dd5eff326dbaabd22cdeba15e9f63d2b205aac75c5e8f6fea82f61c8354";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard launch-ros rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "flexbe_widget implements some smaller scripts for the behavior engine.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
