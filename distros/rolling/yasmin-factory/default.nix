
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, class-loader, pluginlib, python3, python3Packages, rclcpp, tinyxml2-vendor, yasmin, yasmin-viewer }:
buildRosPackage {
  pname = "ros-rolling-yasmin-factory";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_factory/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "eaa7aee7e701e3eab68631799ce3579c739cc802b57daecc787b141044260c82";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake class-loader pluginlib python3Packages.pybind11 ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ python3 python3Packages.lxml rclcpp tinyxml2-vendor yasmin yasmin-viewer ];
  nativeBuildInputs = [ ament-cmake class-loader pluginlib python3Packages.pybind11 ];

  meta = {
    description = "YASMIN factory to create FSMs from XML files";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
