
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-jackal-navigation";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_navigation/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "d722054cec54ab540df895646e88c4157f1040647d8934f3ab2dd10db888b884";
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
