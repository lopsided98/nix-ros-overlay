
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rclcpp-components, phidgets-msgs, std-msgs, launch, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-motors";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_motors/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a13190951f789509da9ce31e8db09280fdac65d49bb3d8d8f116b3c71e658020";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-components phidgets-msgs std-msgs phidgets-api rclcpp ];
  propagatedBuildInputs = [ rclcpp-components launch std-msgs phidgets-msgs phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Motor devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
