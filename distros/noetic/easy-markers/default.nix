
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roslint, rospy, rviz, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-easy-markers";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/easy_markers/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "4931a79ac36297929322d8b5ddd8f43c5e52530a0e47f0f412e7119e29b6577b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers rospy rviz std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Python library to assist in publishing markers easily";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
