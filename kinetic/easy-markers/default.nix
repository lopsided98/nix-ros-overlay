
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, interactive-markers, tf, roslib, catkin, visualization-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-easy-markers";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/easy_markers/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "23ff1f37c017bc511dd6643fb9dbab42fc15ac9137f0ce2071b4da67202ebe99";
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
