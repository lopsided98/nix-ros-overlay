
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, eigen }:
buildRosPackage {
  pname = "ros-humble-aruco";
  version = "5.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/humble/aruco/5.0.4-1.tar.gz";
    name = "5.0.4-1.tar.gz";
    sha256 = "719481ea6dba98a00a04587366c39cbe55bffeebb00eecabb547c30ab9abee94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ mit ];
  };
}
