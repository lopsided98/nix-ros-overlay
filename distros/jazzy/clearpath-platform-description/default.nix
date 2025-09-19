
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-platform-description";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_platform_description/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "8324642752f18f1e81df63ece8723ed464ebc78923a2d1f91da296fa31c83cce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Platform URDF descriptions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
