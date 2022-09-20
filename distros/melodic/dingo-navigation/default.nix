
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-dingo-navigation";
  version = "0.1.11-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_navigation/0.1.11-1.tar.gz";
    name = "0.1.11-1.tar.gz";
    sha256 = "9dc5fd85ce150c8ff2a149cb509e32deb79fb2225ac31b940199bc38686fd9f7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Dingo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
