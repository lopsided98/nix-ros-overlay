
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, pybind11-json-vendor, pybind11-vendor, rclpy, rmf-fleet-adapter }:
buildRosPackage {
  pname = "ros-humble-rmf-fleet-adapter-python";
  version = "2.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/rmf_fleet_adapter_python/2.1.6-1.tar.gz";
    name = "2.1.6-1.tar.gz";
    sha256 = "3b4cedaeac1444dacc9e8558a1ea235b8865762355387ac3e23b76a946b41ff7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ pybind11-json-vendor pybind11-vendor rclpy rmf-fleet-adapter ];

  meta = {
    description = ''Python bindings for the rmf_fleet_adapter'';
    license = with lib.licenses; [ asl20 ];
  };
}
