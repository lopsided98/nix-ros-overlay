
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-driver, rviz-imu-plugin, rviz2, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-microstrain-inertial-examples";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/jazzy/microstrain_inertial_examples/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "9fe29e74b52c11e14ca6ce26851db111a9213f0a0dd4f33ad884b1e68c2f47c1";
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
