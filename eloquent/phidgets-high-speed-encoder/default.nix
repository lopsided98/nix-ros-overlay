
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, rclcpp-components, phidgets-msgs, launch, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-high-speed-encoder";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_high_speed_encoder/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "91543e4cb7621824cc342b63c3a8bfbed9bfe11eee2597eb98664ef4520fa2ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp-components phidgets-msgs phidgets-api rclcpp ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components phidgets-msgs launch phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
