
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-video-monitor-msgs, gazebo-video-monitor-plugins }:
buildRosPackage {
  pname = "ros-melodic-gazebo-video-monitors";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/nlamprian/gazebo_video_monitors-release/archive/release/melodic/gazebo_video_monitors/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "36ec756dae6dbd2dcb27b7e7fda5627144c9f998d04064c68c90f7b04eafcdc8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-video-monitor-msgs gazebo-video-monitor-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that groups together the gazebo_video_monitors packages.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
