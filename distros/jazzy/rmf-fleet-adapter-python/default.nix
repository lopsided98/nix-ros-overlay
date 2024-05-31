
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pybind11-json-vendor, pybind11-vendor, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-jazzy-rmf-fleet-adapter-python";
  version = "2.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/jazzy/rmf_fleet_adapter_python/2.6.0-2.tar.gz";
    name = "2.6.0-2.tar.gz";
    sha256 = "e3a547fac748d6a7fda2191196cae4d4043d8b449e6fb065a2335885dde5bc64";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pybind11-json-vendor pybind11-vendor rclpy rmf-fleet-adapter ];

  meta = {
    description = "Python bindings for the rmf_fleet_adapter";
    license = with lib.licenses; [ asl20 ];
  };
}
