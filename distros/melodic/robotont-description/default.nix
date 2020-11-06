
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-robotont-description";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_description-release/archive/release/melodic/robotont_description/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "ec713b9ea6cf9f2c84409f1b5bc9dd6e1f4722d3ffec37f698dc10930a1a2b00";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
