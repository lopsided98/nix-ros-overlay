
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, map-server, catkin, gmapping, move-base, amcl, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-navigation";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/melodic/ridgeback_navigation/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "22188bcee3b4be8a9d89395483016cc92e58e429d1698a8628de0b5fb2fc18b9";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro urdf map-server gmapping move-base amcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
