
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, toposens-driver, tf2-ros, tf2, rostest, message-runtime, toposens-msgs, pcl-ros, rospy, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-toposens-pointcloud";
  version = "1.1.0-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_pointcloud/1.1.0-1;
    sha256 = "a2efbe0e72314944f7e16b95f26b331dd642b0d41cb37bbb1c91adc90cabc430";
  };

  buildInputs = [ tf2-geometry-msgs toposens-driver tf2-ros tf2 message-runtime toposens-msgs pcl-ros rospy roscpp ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ tf2-geometry-msgs toposens-driver tf2-ros tf2 message-runtime toposens-msgs pcl-ros rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''PCL integration for TS sensors mounted on Turtlebot3.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
