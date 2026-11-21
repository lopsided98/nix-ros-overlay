
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-generic-sensor, mrpt-sensor-bumblebee-stereo, mrpt-sensor-gnss-nmea, mrpt-sensor-gnss-novatel, mrpt-sensor-imu-taobotics, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-sensors";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/lyrical/mrpt_sensors/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a77c4c77e70ad874d5bd35fc054a8bfd0f11986fac0c1dc369dc0763c4b2bccc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-generic-sensor mrpt-sensor-bumblebee-stereo mrpt-sensor-gnss-nmea mrpt-sensor-gnss-novatel mrpt-sensor-imu-taobotics mrpt-sensorlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS nodes for various robotics sensors via mrpt-hwdrivers. Metapackage for all mrpt_sensor packages.";
    license = with lib.licenses; [ bsd3 ];
  };
}
