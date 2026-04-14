
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, class-loader, pluginlib, python3, python3Packages, rclcpp, tinyxml2-vendor, yasmin, yasmin-viewer }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-factory";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_factory/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "ff7434588b0e8b87ef28900fef57e9dea3dffcc720f8a0569d3ce0a95ad36905";
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
