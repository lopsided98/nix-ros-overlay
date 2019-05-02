
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-pilz-robots";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_robots/0.4.8-0.tar.gz;
    sha256 = "09e980e6ff756203c0843c17669d083f6e0ad221f33ea743683ead9594aa984f";
  };

  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-support prbt-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    #license = lib.licenses.Apache 2.0;
  };
}
