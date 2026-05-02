
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, eigen, moveit-core, pluginlib, tf2-eigen }:
buildRosPackage {
  pname = "ros-rolling-crx-kinematics";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crx_kinematics-release/archive/release/rolling/crx_kinematics/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "8a6cd53978a34a7ddbc5b1d751f1e64556054aaa92b8826aa4b2d25c2f206469";
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
