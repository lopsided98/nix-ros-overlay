
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-msgs, launch-ros, rplidar-ros, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-create3-lidar-slam";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/humble/create3_lidar_slam/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "e2a3c4932638fb32ec17c49c9c5af3e1e56ab60d5fe41c094350af4cd7b5da9c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ irobot-create-msgs launch-ros rplidar-ros slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example for using an RPLIDAR A1 with a Create 3";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
