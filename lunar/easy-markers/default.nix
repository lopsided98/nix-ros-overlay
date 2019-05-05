
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, interactive-markers, visualization-msgs, rospy, roslib, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-easy-markers";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/lunar/easy_markers/0.2.4-0.tar.gz;
    sha256 = "15c9099117c9c2ce74bb930fd8c1de296a6266bafe653deb3b3c68add7f47997";
  };

  buildInputs = [ roslib interactive-markers visualization-msgs rospy tf geometry-msgs ];
  propagatedBuildInputs = [ roslib interactive-markers visualization-msgs rospy tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python library to assist in publishing markers easily'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
