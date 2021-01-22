
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, realsense2-description, robotont-description, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-robotont-nuc-description";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_nuc_description-release/archive/release/melodic/robotont_nuc_description/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "1bb9c5c6784650cb26034c8e970605da013decbf63ba6b20bb1201a973c4b537";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ realsense2-description robotont-description rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_nuc_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
