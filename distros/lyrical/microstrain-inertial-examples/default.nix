
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-driver, rviz-imu-plugin, rviz2, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-microstrain-inertial-examples";
  version = "4.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/lyrical/microstrain_inertial_examples/4.8.0-3.tar.gz";
    name = "4.8.0-3.tar.gz";
    sha256 = "d65b3367cd87cb077efbdcc9155987cc664463b35121ff8be3418db2dfcdc508";
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
