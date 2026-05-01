
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, eigen }:
buildRosPackage {
  pname = "ros-lyrical-aruco";
  version = "5.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/lyrical/aruco/5.0.5-3.tar.gz";
    name = "5.0.5-3.tar.gz";
    sha256 = "94bd6bc6715f20d4e4aec8bed393dc421d655dcfa982de905565064d20689ede";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.";
    license = with lib.licenses; [ mit ];
  };
}
