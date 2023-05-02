
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-motors";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_motors/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "ee18f67f6f82511da07e7d20c7e668e08dcf43e374c29c23bc10637cfa7dc14a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Motor devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
