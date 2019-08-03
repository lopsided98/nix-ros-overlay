
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, map-server, amcl, catkin, move-base, urdf, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-melodic-jackal-navigation";
  version = "0.6.3-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_navigation/0.6.3-1.tar.gz;
    sha256 = "33cc60147c63d825cf40d667306fec68ada7ddf6773903ccb47b7234ea358140";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gmapping map-server amcl move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
