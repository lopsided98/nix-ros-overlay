
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-driver, rviz-imu-plugin, rviz2, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-microstrain-inertial-examples";
  version = "4.10.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/lyrical/microstrain_inertial_examples/4.10.0-2.tar.gz";
    name = "4.10.0-2.tar.gz";
    sha256 = "1902914af0e47bfdd4d4b28c9f43a5749f42ebfb1b7c05554571e21cf33a3e02";
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
