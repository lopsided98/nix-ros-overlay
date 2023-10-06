
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, eigen }:
buildRosPackage {
  pname = "ros-humble-aruco";
  version = "5.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/humble/aruco/5.0.3-1.tar.gz";
    name = "5.0.3-1.tar.gz";
    sha256 = "ef6192f44fceb9a53a3f14baa4a0fc08a1ec9184cc089e2872162a17dc2e8c66";
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
