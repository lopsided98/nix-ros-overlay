
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-controller-interface";
  version = "2.25.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_interface/2.25.2-1.tar.gz";
    name = "2.25.2-1.tar.gz";
    sha256 = "ea4ca03f76529381c2a19100275fd1515dfcdeed65529cfe8cf7a0092c993cee";
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
