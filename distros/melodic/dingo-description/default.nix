
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-dingo-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "813a90c15cdf605344cb2c2db8cd8a4a7766b933b4a774c94f0c56ef04e0fb0e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dingo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
