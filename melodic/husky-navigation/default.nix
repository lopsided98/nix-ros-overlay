
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, catkin, base-local-planner, gmapping, move-base, amcl, roslaunch, navfn, dwa-local-planner }:
buildRosPackage {
  pname = "ros-melodic-husky-navigation";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_navigation/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "91db7fc019d68d7575152dafb0ea8ac59f803cd6cdd727aece323d03f6e10c1f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server base-local-planner gmapping move-base amcl navfn dwa-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
