
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch-xml, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-create-description";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/humble/create_description/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "075e5cf3e00ccec22bbf9e14a1523932e704a5c242206b691c00e5c5b2a89d9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch-xml robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Robot URDF descriptions for create_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
