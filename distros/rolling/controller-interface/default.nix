
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-interface";
  version = "3.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_interface/3.13.0-1.tar.gz";
    name = "3.13.0-1.tar.gz";
    sha256 = "bedbd1a3c23d7a04e3324eaf4cc9c4f1c2f9b8b9a7fb1ba2498b50fcdef267e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake sensor-msgs ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
