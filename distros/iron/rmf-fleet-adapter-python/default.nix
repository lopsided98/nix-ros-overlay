
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pybind11-json-vendor, pybind11-vendor, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-iron-rmf-fleet-adapter-python";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/iron/rmf_fleet_adapter_python/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "ff474562168bc0dc1cd2856e305407a80415b766441c88216152f99781ea20f0";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pybind11-json-vendor pybind11-vendor rclpy rmf-fleet-adapter ];

  meta = {
    description = ''Python bindings for the rmf_fleet_adapter'';
    license = with lib.licenses; [ asl20 ];
  };
}
