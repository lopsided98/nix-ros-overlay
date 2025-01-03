
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-high-speed-encoder";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_high_speed_encoder/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "f994c45fd436b6ec8706f02b83b21f6509578cf9b4b7926e267588f0ffcb7f16";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets high speed encoder devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
