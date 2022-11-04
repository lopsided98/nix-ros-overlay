
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-robotont-description";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_description-release/archive/release/melodic/robotont_description/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "687044fd179f21de474782aa93b3e18f6619e3e9fd473c5d293e54396dedee5c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
