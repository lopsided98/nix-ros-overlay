
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, jsoncpp, rviz, qt5, media-export }:
buildRosPackage {
  pname = "ros-kinetic-fkie-potree-rviz-plugin";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/fkie-release/potree_rviz_plugin-release/archive/release/kinetic/fkie_potree_rviz_plugin/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "8795c8fd8547cf1ec43993e2e5a61f22a2b45e11068acec3fa05380b31ea3f42";
  };

  buildType = "catkin";
  buildInputs = [ jsoncpp boost rviz qt5.qtbase ];
  propagatedBuildInputs = [ boost rviz media-export qt5.qtbase ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Render large point clouds in rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
