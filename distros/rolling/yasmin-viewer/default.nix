
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclcpp, rclpy, yasmin, yasmin-msgs, yasmin-ros }:
buildRosPackage {
  pname = "ros-rolling-yasmin-viewer";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_viewer/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "b0b2fd9e5f149a849bd79ac23fd6c73a39361af4fa79331ec118eada4b297575";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.expiringdict python3Packages.flask python3Packages.waitress rclcpp rclpy yasmin yasmin-msgs yasmin-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "TODO: Package description";
    license = with lib.licenses; [ "TODO-License-declaration" ];
  };
}
