
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-controller-interface";
  version = "3.21.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/controller_interface/3.21.2-1.tar.gz";
    name = "3.21.2-1.tar.gz";
    sha256 = "39d768056ed22fc1f2792c5771d1107ed616a3aed4b68dc81f10b8d52c05a09f";
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
