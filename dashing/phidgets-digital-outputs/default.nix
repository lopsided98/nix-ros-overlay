
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, phidgets-msgs, launch, rclcpp, ament-cmake-ros, std-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-phidgets-digital-outputs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_digital_outputs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ce1d5f67aca42b09eefbc87b7ea8dee287e6ce2f62482c929350251868d438b9";
  };

  buildType = "ament_cmake";
  buildInputs = [ phidgets-api phidgets-msgs rclcpp std-msgs rclcpp-components ];
  propagatedBuildInputs = [ phidgets-api phidgets-msgs launch rclcpp std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Digital Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
