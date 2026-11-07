
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-hwdrivers, mrpt-libros-bridge, mrpt-msgs, mrpt-sensorlib, rclcpp-components, ros-environment, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-sensor-bumblebee-stereo";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/lyrical/mrpt_sensor_bumblebee_stereo/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "7dd64ae4a9ba2eaec69c0185f97930c060702e9275429309f4381156356a057b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ mrpt-hwdrivers mrpt-libros-bridge mrpt-msgs mrpt-sensorlib rclcpp-components tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS node for Bumblebee Stereo Cameras using libdc1394 interface (based on mrpt-hwdrivers)";
    license = with lib.licenses; [ bsd3 ];
  };
}
