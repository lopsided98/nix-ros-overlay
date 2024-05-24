
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rclcpp }:
buildRosPackage {
  pname = "ros-humble-vmbc-interface";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vimbax_ros2_driver-release/archive/release/humble/vmbc_interface/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "88d9347a7bdee96c2861dba66dd5b9c7197e377904972e21eb8aa686005b113a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "VmbC interface package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
