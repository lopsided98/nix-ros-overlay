
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, jsoncpp, media-export, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-fkie-potree-rviz-plugin";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/potree_rviz_plugin-release/archive/release/noetic/fkie_potree_rviz_plugin/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "96ca307ae1364c749d51d05d07f82d1119b81f8dc56ccbf2e9b21fc06b64c039";
  };

  buildType = "catkin";
  buildInputs = [ catkin jsoncpp ];
  propagatedBuildInputs = [ boost media-export qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Render large point clouds in rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
