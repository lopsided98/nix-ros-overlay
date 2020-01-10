
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, gmapping, map-server, move-base, navfn, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-husky-navigation";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_navigation/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "605a9afe049cfec4eb315037bf7973ac4bba43217da55c7b7a2b880eb44acae0";
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
