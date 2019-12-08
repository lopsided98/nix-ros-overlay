
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, sensor-msgs, launch, rclcpp, ament-cmake-ros, phidgets-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-phidgets-high-speed-encoder";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_high_speed_encoder/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "6fd632d74a4e6f11faed8eeb4987f6cc359085b762e5618a70c813bf2c34505d";
  };

  buildType = "ament_cmake";
  buildInputs = [ phidgets-api sensor-msgs rclcpp phidgets-msgs rclcpp-components ];
  propagatedBuildInputs = [ phidgets-api sensor-msgs launch rclcpp phidgets-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
