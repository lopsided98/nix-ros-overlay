
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-cmake-modules";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/cmake_modules-release/archive/release/lunar/cmake_modules/0.4.2-0.tar.gz;
    sha256 = "62ed4c93c459cdc697f854e9a06fdd353cb59243d521faed00737c0c233696e9";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A common repository for CMake Modules which are not distributed with CMake but are commonly used by ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
