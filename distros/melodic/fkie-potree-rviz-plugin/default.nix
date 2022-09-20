
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, jsoncpp, media-export, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-fkie-potree-rviz-plugin";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/potree_rviz_plugin-release/archive/release/melodic/fkie_potree_rviz_plugin/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c1b5661805e0eee8b57c70f305616a10753111376f3a846c4c0b0fc1486809d8";
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
