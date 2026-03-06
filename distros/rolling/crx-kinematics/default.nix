
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, eigen, moveit-core, pluginlib, tf2-eigen }:
buildRosPackage {
  pname = "ros-rolling-crx-kinematics";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crx_kinematics-release/archive/release/rolling/crx_kinematics/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ad988879af40c95db4a77789223ec28c6e185490fb168353c70248048764bb1e";
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
