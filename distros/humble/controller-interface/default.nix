
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-interface";
  version = "2.32.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_interface/2.32.0-1.tar.gz";
    name = "2.32.0-1.tar.gz";
    sha256 = "79d1dcc4fb9ef6f28ce274336c9a55363d4934e8c4d8bcf0fcbe2e2ee22819bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Description of controller_interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
