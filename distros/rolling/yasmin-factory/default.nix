
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, class-loader, pluginlib, python3, python3Packages, rclcpp, tinyxml2-vendor, yasmin, yasmin-viewer }:
buildRosPackage {
  pname = "ros-rolling-yasmin-factory";
  version = "4.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_factory/4.2.4-1.tar.gz";
    name = "4.2.4-1.tar.gz";
    sha256 = "e81d85e7267a3af2876c3e0aba534a1772e30a9b657ace5ecdd03dd9e8e68ff5";
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
