
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-driver, rviz-imu-plugin, rviz2, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-microstrain-inertial-examples";
  version = "4.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/rolling/microstrain_inertial_examples/4.8.0-2.tar.gz";
    name = "4.8.0-2.tar.gz";
    sha256 = "459b13003e246b9d4cd893f1bc8b1b8b52213aa7bf2078af066a47b05fc9aa87";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ microstrain-inertial-driver rviz-imu-plugin rviz2 sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Simple examples using the microstrain_inertial_driver for MicroStrain sensors.";
    license = with lib.licenses; [ mit ];
  };
}
