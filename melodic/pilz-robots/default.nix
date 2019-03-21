
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, prbt-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-pilz-robots";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_robots/0.5.2-0.tar.gz;
    sha256 = "848dc98104ae50f81e74c1bfca1e7ce3841af09e0df516317ee23f3414bd10b2";
  };

  propagatedBuildInputs = [ prbt-ikfast-manipulator-plugin prbt-support prbt-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    #license = lib.licenses.Apache 2.0;
  };
}
