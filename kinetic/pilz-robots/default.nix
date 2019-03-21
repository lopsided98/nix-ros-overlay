
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-pilz-robots";
  version = "0.4.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_robots/0.4.7-0.tar.gz;
    sha256 = "5d3c480dfa89377ce6f4e8e952ba84e9fd323e504b18cf676ef093c484bd5d18";
  };

  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-support prbt-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    #license = lib.licenses.Apache 2.0;
  };
}
