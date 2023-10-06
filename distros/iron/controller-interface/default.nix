
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-controller-interface";
  version = "3.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/iron/controller_interface/3.19.1-1.tar.gz";
    name = "3.19.1-1.tar.gz";
    sha256 = "7e95501ea8e2d581eb0142cfdc90188f580a0936818a36542948fc2c742d0681";
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
