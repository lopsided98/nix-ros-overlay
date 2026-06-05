
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-humble-nebula-continental-common";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_continental_common/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "1ec3d78225250e7bf14b37d92bed18585820ef0cadf690a583551ffa157e4a6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ boost nebula-core-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Common Continental Libraries and headers";
    license = with lib.licenses; [ asl20 ];
  };
}
