
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-robosense-common";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_robosense_common/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "7b072805a38360fd57e3139d096715a6f6dc2d29c063f0483f4362a5d2fa7a4a";
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
