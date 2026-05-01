
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-index-cpp, class-loader, pluginlib, python3, python3Packages, rclcpp, tinyxml2-vendor, yasmin, yasmin-viewer }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-factory";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_factory/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "cf7a66d61e3f37f409c1b37706a38a91b63ac6057688a387d390762bf2e00fc9";
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
