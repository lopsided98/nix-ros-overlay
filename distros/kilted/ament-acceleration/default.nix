
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-kilted-ament-acceleration";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_acceleration-release/archive/release/kilted/ament_acceleration/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "053e38e7ad729e37cb606feb316adf11de32bd5b8df1abc902ccd2cdf4637aa6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "CMake macros and utilities to include hardware acceleration into the ROS 2 build system (ament) and its development flows.";
    license = with lib.licenses; [ asl20 ];
  };
}
