
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ainstein-radar-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/AinsteinAI/ainstein_radar-release/archive/release/kinetic/ainstein_radar_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "6389a87f6ef5a4de37d9bf8e242f4f8105c550191ad5342a58d64c122c2d6210";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for Ainstein radars.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
