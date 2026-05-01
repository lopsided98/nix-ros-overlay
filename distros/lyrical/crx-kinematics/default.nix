
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, eigen, moveit-core, pluginlib, tf2-eigen }:
buildRosPackage {
  pname = "ros-lyrical-crx-kinematics";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crx_kinematics-release/archive/release/lyrical/crx_kinematics/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "bdfd450545b35e64c79f9164b187b10216e8647264bbdeb0e5c9e4eee8da2141";
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
