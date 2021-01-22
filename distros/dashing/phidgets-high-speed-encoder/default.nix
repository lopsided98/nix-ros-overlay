
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-phidgets-high-speed-encoder";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_high_speed_encoder/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "8acc4203fad88630b4d508b08bab535e49e011f6c52dc9df6a6b243cca514bd2";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
