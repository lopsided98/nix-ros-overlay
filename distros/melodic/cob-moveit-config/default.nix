
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-cob-moveit-config";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/melodic/cob_moveit_config/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "9303daa7bd918d8604c518b08eea735466e95c2835c70aef4c10a332b48e875b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt config files for all cob and raw'';
    license = with lib.licenses; [ asl20 ];
  };
}
