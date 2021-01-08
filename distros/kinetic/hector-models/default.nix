
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-sensors-description, hector-xacro-tools }:
buildRosPackage {
  pname = "ros-kinetic-hector-models";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/kinetic/hector_models/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "beb9f38fbac185a339c775522c6c9387933bcf6237e777189d5056a22aa03a01";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-sensors-description hector-xacro-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_models contains (urdf) models of robots, sensors etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
