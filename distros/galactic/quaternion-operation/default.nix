
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, eigen, geometry-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-quaternion-operation";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/quaternion_operation-release/archive/release/galactic/quaternion_operation/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "2000adee827cb2b8cdea6dd0ad31d7d4abf6fd13669da21f5ff2b2eb02e39866";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake-auto eigen geometry-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The quaternion_operation package'';
    license = with lib.licenses; [ asl20 ];
  };
}
