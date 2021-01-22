
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, jsoncpp, media-export, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-fkie-potree-rviz-plugin";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/potree_rviz_plugin-release/archive/release/noetic/fkie_potree_rviz_plugin/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "446350f7037502f71f106f41efddacce350a3841b6db11b773ec2d520c2b7a8a";
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
