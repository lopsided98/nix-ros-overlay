
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_pybind11-json-dev, ament-cmake-pytest, python3Packages, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-lyrical-rmf-fleet-adapter-python";
  version = "2.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/lyrical/rmf_fleet_adapter_python/2.12.0-3.tar.gz";
    name = "2.12.0-3.tar.gz";
    sha256 = "6ab76ce563b510d942351638c5d8bb7aecb4177fac8053a0cc5260b251fc5adf";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ _unresolved_pybind11-json-dev python3Packages.pybind11 rclpy rmf-fleet-adapter ];

  meta = {
    description = "Python bindings for the rmf_fleet_adapter";
    license = with lib.licenses; [ asl20 ];
  };
}
