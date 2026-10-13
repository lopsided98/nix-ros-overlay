
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, eigen }:
buildRosPackage {
  pname = "ros-jazzy-aruco";
  version = "5.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/jazzy/aruco/5.0.6-1.tar.gz";
    name = "5.0.6-1.tar.gz";
    sha256 = "ae5c7e9469316692a97d05aca8095dd366d3cf079bd27b330d6c73d24da30098";
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
