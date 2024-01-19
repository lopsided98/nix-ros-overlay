
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-acceleration, ament-cmake-core, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-humble-ament-vitis";
  version = "0.10.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_vitis-release/archive/release/humble/ament_vitis/0.10.1-2.tar.gz";
    name = "0.10.1-2.tar.gz";
    sha256 = "7880fe71efecdfbb2a6fb56ab0aa5b26910bbf9a6eebd4f6435b3025a34fca8c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-acceleration ament-cmake-core ament-cmake-ros ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''CMake macros and utilities to include Vitis platform into the ROS 2 build system (ament) and its development flows.'';
    license = with lib.licenses; [ asl20 ];
  };
}
