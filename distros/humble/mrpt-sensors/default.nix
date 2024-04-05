
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, mrpt-generic-sensor, mrpt-sensor-bumblebee-stereo, mrpt-sensor-gnns-nmea, mrpt-sensorlib }:
buildRosPackage {
  pname = "ros-humble-mrpt-sensors";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/mrpt_sensors/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "3a8d391b4af47122a5bda58d3bfdc2768f75ea542c39947a3d58a66017e1febe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common mrpt-generic-sensor mrpt-sensor-bumblebee-stereo mrpt-sensor-gnns-nmea mrpt-sensorlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS nodes for various robotics sensors via mrpt-hwdrivers. Metapackage for all mrpt_sensor packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
