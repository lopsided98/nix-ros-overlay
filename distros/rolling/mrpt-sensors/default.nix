
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-generic-sensor, mrpt-sensor-bumblebee-stereo, mrpt-sensor-gnns-nmea, mrpt-sensor-imu-taobotics, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-rolling-mrpt-sensors";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/rolling/mrpt_sensors/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "917929ef5986686bca5399270217b8c67ece0f124a13b20999a814a9676cf642";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-generic-sensor mrpt-sensor-bumblebee-stereo mrpt-sensor-gnns-nmea mrpt-sensor-imu-taobotics mrpt-sensorlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS nodes for various robotics sensors via mrpt-hwdrivers. Metapackage for all mrpt_sensor packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
