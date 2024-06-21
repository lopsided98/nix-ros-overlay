
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, launch-ros, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-flexbe-widget";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/rolling/flexbe_widget/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "424ba2a19ca684b6c964e834f96ca51037b1d4ea06d2fb2122c9e453248d8b22";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-mirror flexbe-msgs flexbe-onboard launch-ros rclpy ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "flexbe_widget implements some smaller scripts for the behavior engine.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
