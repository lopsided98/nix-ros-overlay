
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, gmapping, map-server, move-base, navfn, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-husky-navigation";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_navigation/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "871d44bfd52cdeb700f2644f1d37b91250397e1b6437fc6fc3955f5a29fb49c6";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner gmapping map-server move-base navfn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
