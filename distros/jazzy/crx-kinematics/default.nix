
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, eigen, moveit-core, pluginlib, tf2-eigen }:
buildRosPackage {
  pname = "ros-jazzy-crx-kinematics";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crx_kinematics-release/archive/release/jazzy/crx_kinematics/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7976cf397773cf7c5790ce90ca014560a13a9aa49e387da6a670b32d9bf7616f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen moveit-core pluginlib tf2-eigen ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "C++ implementation of FK/IK for Fanuc CRX series cobots";
    license = with lib.licenses; [ mit ];
  };
}
