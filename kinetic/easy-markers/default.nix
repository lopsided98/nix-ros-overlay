
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, interactive-markers, visualization-msgs, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-easy-markers";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/easy_markers/0.2.4-0.tar.gz;
    sha256 = "23ff1f37c017bc511dd6643fb9dbab42fc15ac9137f0ce2071b4da67202ebe99";
  };

  buildInputs = [ interactive-markers visualization-msgs rospy tf roslib geometry-msgs ];
  propagatedBuildInputs = [ interactive-markers visualization-msgs rospy tf roslib geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python library to assist in publishing markers easily'';
    #license = lib.licenses.BSD;
  };
}
