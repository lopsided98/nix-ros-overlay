
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, class-loader, pluginlib, python3, python3Packages, rclcpp, tinyxml2-vendor, yasmin, yasmin-viewer }:
buildRosPackage {
  pname = "ros-kilted-yasmin-factory";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_factory/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "cf3931ae3284a4a07dca077e599fc74ba427d2d8d1a0740ed7cb18ad72335f32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ ament-index-cpp class-loader pluginlib python3 python3Packages.lxml python3Packages.pybind11 rclcpp tinyxml2-vendor yasmin yasmin-viewer ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "YASMIN factory to create FSMs from XML files";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
