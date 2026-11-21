
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-driver, rviz-imu-plugin, rviz2, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-microstrain-inertial-examples";
  version = "4.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/rolling/microstrain_inertial_examples/4.10.1-1.tar.gz";
    name = "4.10.1-1.tar.gz";
    sha256 = "10a93080f78404dcf43318a3e50a50acc08f13b1de31c6baabb9896be74cb426";
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
