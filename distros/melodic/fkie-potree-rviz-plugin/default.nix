
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, jsoncpp, media-export, qt5, rviz }:
buildRosPackage {
  pname = "ros-melodic-fkie-potree-rviz-plugin";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/fkie-release/potree_rviz_plugin-release/archive/release/melodic/fkie_potree_rviz_plugin/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "9a9b281a5546efc32cbf9d79e4675deaf0c30bae167cd88a26c6c904a23cbd8c";
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
