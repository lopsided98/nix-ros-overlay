
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, gps-msgs, nav-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-gps-tools";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/foxy/gps_tools/1.0.5-2.tar.gz";
    name = "1.0.5-2.tar.gz";
    sha256 = "4458640091b1b64cf3436d7a2d30ba9a4a96589ef2583a7101e0443c79c342b4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ gps-msgs nav-msgs rclcpp rclcpp-components rclpy sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''GPS routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
