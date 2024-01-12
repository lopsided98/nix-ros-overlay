
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-robotont-description";
  version = "0.0.8-r2";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_description-release/archive/release/noetic/robotont_description/0.0.8-2.tar.gz";
    name = "0.0.8-2.tar.gz";
    sha256 = "1b1b713aad635f182614d471ce49065a0dc0747fbd9bc434b7e2656ac9528d92";
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
