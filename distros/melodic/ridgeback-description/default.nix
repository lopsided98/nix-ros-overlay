
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-description";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/melodic/ridgeback_description/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "1c00ca0f22cf8185c034c172bff114c9380a54253663a56b4c3908c1410274bf";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ lms1xx robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
