
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, interactive-markers, visualization-msgs, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-easy-markers";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/easy_markers/0.2.4-0.tar.gz;
    sha256 = "64fea822e5e6ee2d58d4bfbd23519485c3197e5a8a8d74ef97ec91abc5e35088";
  };

  buildInputs = [ interactive-markers visualization-msgs rospy tf roslib geometry-msgs ];
  propagatedBuildInputs = [ interactive-markers visualization-msgs rospy tf roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python library to assist in publishing markers easily'';
    #license = lib.licenses.BSD;
  };
}
