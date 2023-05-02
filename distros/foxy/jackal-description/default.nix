
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-foxy-jackal-description";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/jackal_description/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "649fce0a91c6fa3bbff815fa46fc184e131e69dfc7c72a2347b28349d3c0414c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher urdf velodyne-description xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF robot description for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
