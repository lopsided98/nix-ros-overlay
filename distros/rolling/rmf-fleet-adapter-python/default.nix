
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_pybind11-json-dev, ament-cmake-pytest, python3Packages, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-rolling-rmf-fleet-adapter-python";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_fleet_adapter_python/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "01c38436e1e61f1707fc10ec3dce74daa28f5ea7f62532330b01ef618e2bb950";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ _unresolved_pybind11-json-dev python3Packages.pybind11 rclpy rmf-fleet-adapter ];

  meta = {
    description = "Python bindings for the rmf_fleet_adapter";
    license = with lib.licenses; [ asl20 ];
  };
}
