
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, move-base, robot-localization, roslaunch, tf }:
buildRosPackage {
  pname = "ros-kinetic-multi-jackal-nav";
  version = "0.0.5";

  src = fetchurl {
    url = https://github.com/NicksSimulationsROS/multi_jackal-release/archive/release/kinetic/multi_jackal_nav/0.0.5-0.tar.gz;
    sha256 = "f9c5dfe75bfe073df9758dc739b811203f1f64fe80900209070316c282f2db12";
  };

  buildInputs = [ robot-localization roslaunch tf move-base ];
  propagatedBuildInputs = [ robot-localization tf move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Localization and navigation for the Jackal.'';
    #license = lib.licenses.BSD;
  };
}
