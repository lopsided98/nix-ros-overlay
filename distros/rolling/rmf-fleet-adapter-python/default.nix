
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pybind11-json-vendor, pybind11-vendor, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-rolling-rmf-fleet-adapter-python";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_fleet_adapter_python/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "28dcfefe4bf2fd4e7d81c502edfa90bd0b1fea8a625c3cb752b3ad168878a0a7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pybind11-json-vendor pybind11-vendor rclpy rmf-fleet-adapter ];

  meta = {
    description = ''Python bindings for the rmf_fleet_adapter'';
    license = with lib.licenses; [ asl20 ];
  };
}
