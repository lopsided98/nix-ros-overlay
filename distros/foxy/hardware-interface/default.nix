
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, control-msgs, pluginlib, rcpputils, rcutils, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-foxy-hardware-interface";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/bmagyar/ros2_control-release/archive/release/foxy/hardware_interface/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1d5a65edab98e7c06bc2ee561352b6d7c1997124968e50837e51298432469768";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ control-msgs pluginlib rcpputils rcutils tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 ros_control hardware interface'';
    license = with lib.licenses; [ asl20 ];
  };
}
