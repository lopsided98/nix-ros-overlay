
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, jsoncpp, media-export, qt5, rviz }:
buildRosPackage {
  pname = "ros-kinetic-fkie-potree-rviz-plugin";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/potree_rviz_plugin-release/archive/release/kinetic/fkie_potree_rviz_plugin/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "44d19e97245bc2264a21e1ca7b8ee96a4b9a7565bb08a0c837a56f25bf84d0da";
  };

  buildType = "catkin";
  buildInputs = [ jsoncpp ];
  propagatedBuildInputs = [ boost media-export qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Render large point clouds in rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
