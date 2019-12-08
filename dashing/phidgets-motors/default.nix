
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, phidgets-msgs, launch, rclcpp, ament-cmake-ros, std-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-phidgets-motors";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_motors/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "5f8ef698074e708c161ceaf431f90bd7e5f979931419dd8967fba645ea189fc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ phidgets-api phidgets-msgs rclcpp std-msgs rclcpp-components ];
  propagatedBuildInputs = [ phidgets-api phidgets-msgs launch rclcpp std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Motor devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
