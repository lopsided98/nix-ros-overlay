
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-robosense-common";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_robosense_common/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "638a1b39bc54d6f11fb6af72f3484a894d7b61d736fcd1af97cc863e5802d2bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ nebula-core-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Robosense Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}
