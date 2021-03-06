
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-heron-simulator";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_simulator-release/archive/release/melodic/heron_simulator/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "c37d22db9e753e629036e6398a75a6e295b6438d3328d4dc954ba561615898a3";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulator package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
