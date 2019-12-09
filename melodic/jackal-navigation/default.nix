
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, map-server, catkin, gmapping, move-base, amcl, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-jackal-navigation";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_navigation/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "33cc60147c63d825cf40d667306fec68ada7ddf6773903ccb47b7234ea358140";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro urdf map-server gmapping move-base amcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
