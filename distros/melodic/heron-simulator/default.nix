
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-heron-simulator";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_simulator-release/archive/release/melodic/heron_simulator/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "01e62741f3b4ac972fe81036559221d1c85baa78e0b6c9a6e4e42ad2013b3e77";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ lms1xx robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulator package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
