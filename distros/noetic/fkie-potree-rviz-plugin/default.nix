
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, jsoncpp, media-export, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-fkie-potree-rviz-plugin";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/potree_rviz_plugin-release/archive/release/noetic/fkie_potree_rviz_plugin/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "861596e2c945ca095044e5f194b229909cd1391659bc88e26761cc607dafae43";
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
