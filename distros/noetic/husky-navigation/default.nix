
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, gmapping, map-server, move-base, navfn, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-husky-navigation";
  version = "0.6.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_navigation/0.6.5-1.tar.gz";
    name = "0.6.5-1.tar.gz";
    sha256 = "3d3e0f2084d6bf69c8764023aa23e95d1024dba29426f6b81926a1cfaef76a92";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner gmapping map-server move-base navfn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
