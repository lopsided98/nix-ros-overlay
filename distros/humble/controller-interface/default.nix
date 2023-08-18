
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-interface";
  version = "2.30.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_interface/2.30.0-1.tar.gz";
    name = "2.30.0-1.tar.gz";
    sha256 = "164685b56969acd412f60aac384b19b18cf54bc9163150a05b91ffc13816a6bf";
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
