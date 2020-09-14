
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf }:
buildRosPackage {
  pname = "ros-foxy-chiconybot-description";
  version = "0.0.0-r2";

  src = fetchurl {
    url = "https://github.com/jediofgever/ROS_CB-release/archive/release/foxy/chiconybot_description/0.0.0-2.tar.gz";
    name = "0.0.0-2.tar.gz";
    sha256 = "d58e431106726f5587d216e63331dfb3830ab14841564dc565cbaa8f1130e81f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''3D models of the chiconybot for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
