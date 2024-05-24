
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-high-speed-encoder";
  version = "2.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_high_speed_encoder/2.3.3-2.tar.gz";
    name = "2.3.3-2.tar.gz";
    sha256 = "84639f3ea43a623f465e571a96f6d0e70f9b708100dd865a871b6d4cb82582c4";
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
