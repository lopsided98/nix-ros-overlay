
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, class-loader, pluginlib, python3, python3Packages, rclcpp, tinyxml2-vendor, yasmin, yasmin-viewer }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-factory";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_factory/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "3862c1cbb5c08f7f2ebe64efc446e39f3bd086187642dab0bb8237fdde62d44f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ class-loader pluginlib python3 python3Packages.lxml python3Packages.pybind11 rclcpp tinyxml2-vendor yasmin yasmin-viewer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN factory to create FSMs from XML files";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
