
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-testing, rclcpp, rqt-plot, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-foxy-openzen-driver";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/lp-research/openzen_sensor_ros2-release/archive/release/foxy/openzen_driver/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "13508ba2db05e446942b792dc0539e06546470a9071cb24c3543db431e3035f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch launch-testing ];
  propagatedBuildInputs = [ rclcpp rqt-plot sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 Driver for LP-Research inertial measurement units and satellite navigation senors'';
    license = with lib.licenses; [ mit "BSL-1.0" lgpl3Only bsdOriginal ];
  };
}
