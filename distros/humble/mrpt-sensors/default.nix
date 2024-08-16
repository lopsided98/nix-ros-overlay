
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-generic-sensor, mrpt-sensor-bumblebee-stereo, mrpt-sensor-gnss-nmea, mrpt-sensor-gnss-novatel, mrpt-sensor-imu-taobotics, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-sensors";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/mrpt_sensors/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "dfda8af40cc3cf2fae4664307dc128a53968a5cf7bdc1c7c86802c1233ac88bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-generic-sensor mrpt-sensor-bumblebee-stereo mrpt-sensor-gnss-nmea mrpt-sensor-gnss-novatel mrpt-sensor-imu-taobotics mrpt-sensorlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS nodes for various robotics sensors via mrpt-hwdrivers. Metapackage for all mrpt_sensor packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
