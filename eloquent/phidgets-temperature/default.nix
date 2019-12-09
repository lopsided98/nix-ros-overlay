
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rclcpp-components, launch, std-msgs, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-temperature";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_temperature/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "aab7e7465b6d9d34b524b5a2fff1117eb5ac364da5645aafa0b6764a6bdb8ed5";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs phidgets-api rclcpp rclcpp-components ];
  propagatedBuildInputs = [ rclcpp-components launch std-msgs phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Temperature devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
