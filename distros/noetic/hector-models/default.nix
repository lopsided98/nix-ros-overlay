
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-sensors-description, hector-xacro-tools }:
buildRosPackage {
  pname = "ros-noetic-hector-models";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/noetic/hector_models/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "5c526ee60903895e6b913a387172e0d21507a10b64c91426233631901f5eb990";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-sensors-description hector-xacro-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_models contains (urdf) models of robots, sensors etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
