
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rclcpp }:
buildRosPackage {
  pname = "ros-humble-vmbc-interface";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vimbax_ros2_driver-release/archive/release/humble/vmbc_interface/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "31a595c6f62c35f9b4a9c88abda0b734900d431f839c5f514f34817157fb3c57";
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
