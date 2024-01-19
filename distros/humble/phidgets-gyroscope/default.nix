
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-phidgets-gyroscope";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_gyroscope/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "e8356d1d23311552eb98aa6bb328794ec6262a1989654ab9d6b1741e0aed2010";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Gyroscope devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
