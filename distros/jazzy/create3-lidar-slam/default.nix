
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-msgs, launch-ros, rplidar-ros, slam-toolbox }:
buildRosPackage {
  pname = "ros-jazzy-create3-lidar-slam";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/jazzy/create3_lidar_slam/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f601dfa3d9a24a3ea2e4e4b7a756b2a5a9671ecbaaf44ccd19cfd14345c3724a";
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
