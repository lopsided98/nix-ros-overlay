
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-mirror, flexbe-msgs, flexbe-onboard, launch-ros, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-flexbe-widget";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/iron/flexbe_widget/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "e175dda3c1d476b23153a4707caaaeb004fae0e53a3a547210f72202fdef28ce";
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
