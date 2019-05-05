
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-pilz-robots";
  version = "0.5.3-r1";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_robots/0.5.3-1.tar.gz;
    sha256 = "ca7f077a594ee37330c36f93ece949219d43b4f34be8545410004f2a4a4fb062";
  };

  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-support prbt-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
