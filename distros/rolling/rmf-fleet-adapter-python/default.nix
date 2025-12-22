
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_pybind11-json-dev, ament-cmake-pytest, python3Packages, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-rolling-rmf-fleet-adapter-python";
  version = "2.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/rolling/rmf_fleet_adapter_python/2.11.1-1.tar.gz";
    name = "2.11.1-1.tar.gz";
    sha256 = "88bcad41aedf8c99ae1fd8d38510be3340c4c875b6fe2c4fa29b131abcb765cb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ _unresolved_pybind11-json-dev python3Packages.pybind11 rclpy rmf-fleet-adapter ];

  meta = {
    description = "Python bindings for the rmf_fleet_adapter";
    license = with lib.licenses; [ asl20 ];
  };
}
