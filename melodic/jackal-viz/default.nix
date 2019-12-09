
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, jackal-description, catkin, rviz, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-jackal-viz";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_desktop-release/archive/release/melodic/jackal_viz/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "7849a0a3491f501d697a8146a432808113bcb48663d3b43651a109385602be6f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher rviz jackal-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Jackal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
