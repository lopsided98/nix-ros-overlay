
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-jackal-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/jackal_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ba879d567ab1db28e7c8e732105214253fc7a65d2bcfe5e65745bf761102a35d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF robot description for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
