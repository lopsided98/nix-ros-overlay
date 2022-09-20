
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-warthog-description";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/melodic/warthog_description/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "4c6b2233e81e8a3fd83af6f9cf2815dcfff21edaa579a2ce39ad5c1aa3f1d473";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
