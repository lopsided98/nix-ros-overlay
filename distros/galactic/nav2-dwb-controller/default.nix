
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, costmap-queue, dwb-core, dwb-critics, dwb-msgs, dwb-plugins, nav-2d-msgs, nav-2d-utils }:
buildRosPackage {
  pname = "ros-galactic-nav2-dwb-controller";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_dwb_controller/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "9ae330b3f9fbcb7f0fbf60151c48937204eb17b1d774e4b17fa34ce32b7a9879";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ costmap-queue dwb-core dwb-critics dwb-msgs dwb-plugins nav-2d-msgs nav-2d-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 controller (DWB) metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
