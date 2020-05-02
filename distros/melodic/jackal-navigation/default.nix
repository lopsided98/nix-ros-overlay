
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-jackal-navigation";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_navigation/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "619c6e1d03c9c4bb478230ab2f2c51d4ad4178cd92b332e537e045ab76a8e24a";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
