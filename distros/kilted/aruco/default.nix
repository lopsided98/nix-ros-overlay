
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, eigen }:
buildRosPackage {
  pname = "ros-kilted-aruco";
  version = "5.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/kilted/aruco/5.0.5-2.tar.gz";
    name = "5.0.5-2.tar.gz";
    sha256 = "c8e5cf7ff929ad520f96a5ac3ff0a1b0fc2cdc7a67f8b5fb96a158cf33fcb9d1";
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
