
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-navigation";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/melodic/ridgeback_navigation/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "5b58af5e4a32ffe7cc45b55abf896c410c23e508ea81eb45d05e79738ece2752";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
