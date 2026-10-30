
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-generic-sensor, mrpt-sensor-bumblebee-stereo, mrpt-sensor-gnss-nmea, mrpt-sensor-gnss-novatel, mrpt-sensor-imu-taobotics, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-kilted-mrpt-sensors";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/kilted/mrpt_sensors/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "e5630debfdcfb8d9b716b16122cc8569daf1e49eb2d20cf99574936422147b67";
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
