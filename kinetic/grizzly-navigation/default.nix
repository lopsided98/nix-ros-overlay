
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, catkin, base-local-planner, gmapping, move-base, amcl, roslaunch, navfn, dwa-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-navigation";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/grizzly-release/archive/release/kinetic/grizzly_navigation/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "347b7d966462fd1f273b2e36f3ceeb83675508afd24897f1bb838ece185e279a";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ map-server base-local-planner gmapping move-base amcl navfn dwa-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Grizzly'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
