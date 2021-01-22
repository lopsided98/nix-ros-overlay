
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-phidgets-high-speed-encoder";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/foxy/phidgets_high_speed_encoder/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "176d4a4404c64ebf11d34fcd0de48ae0bed946b4df947ab823899d671b0c9ffa";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
