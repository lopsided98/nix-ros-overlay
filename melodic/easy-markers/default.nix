
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, interactive-markers, tf, roslib, catkin, visualization-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-easy-markers";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/easy_markers/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "64fea822e5e6ee2d58d4bfbd23519485c3197e5a8a8d74ef97ec91abc5e35088";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs interactive-markers tf roslib visualization-msgs rospy ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers tf roslib visualization-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python library to assist in publishing markers easily'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
