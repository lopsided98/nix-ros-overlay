
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roslint, rospy, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-easy-markers";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/easy_markers/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "e631fbab573fe7c8b30e5ae1048a15262d31408bcd0fba05c9fb0a4976b5fdce";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers rospy tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python library to assist in publishing markers easily'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
