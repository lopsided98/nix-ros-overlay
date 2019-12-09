
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-driver, dynamic-reconfigure, toposens-msgs, catkin, toposens-description, rospy, roscpp, rviz-visual-tools, message-runtime, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-toposens-markers";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_markers/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "706afdde0178d5d631ee7423621a824789ffab08cb6dab391597fbd56a65ac94";
  };

  buildType = "catkin";
  buildInputs = [ toposens-driver dynamic-reconfigure toposens-msgs rospy roscpp rviz-visual-tools message-runtime ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ toposens-driver dynamic-reconfigure toposens-msgs toposens-description rospy roscpp rviz-visual-tools message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
