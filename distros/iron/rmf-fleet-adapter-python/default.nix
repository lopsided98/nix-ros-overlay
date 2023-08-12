
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pybind11-json-vendor, pybind11-vendor, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-iron-rmf-fleet-adapter-python";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/iron/rmf_fleet_adapter_python/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "ec344f4b4328683f9e294acf6f9e4923b25663f012e570aba2ddce01718c4e1f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pybind11-json-vendor pybind11-vendor rclpy rmf-fleet-adapter ];

  meta = {
    description = ''Python bindings for the rmf_fleet_adapter'';
    license = with lib.licenses; [ asl20 ];
  };
}
