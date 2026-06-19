
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, boost, nebula-core-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-continental-common";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_continental_common/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "989177482bec813625d93bd702259ac4b8b9a94b5db964b71bee4837d179a5f3";
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
