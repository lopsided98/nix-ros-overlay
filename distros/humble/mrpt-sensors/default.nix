
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-generic-sensor, mrpt-sensor-bumblebee-stereo, mrpt-sensor-gnns-nmea, mrpt-sensor-imu-taobotics, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-sensors";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/mrpt_sensors/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "4de4be8adcc53e28f55f6f7914e5f19b0a0aa12c59743b30fd5f9f687b9da0ea";
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
