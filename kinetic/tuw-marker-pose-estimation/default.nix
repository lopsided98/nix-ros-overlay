
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, marker-msgs, tf, catkin, cv-bridge, image-geometry, rospy, std-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-tuw-marker-pose-estimation";
  version = "0.0.7";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_marker_pose_estimation/0.0.7-0.tar.gz;
    sha256 = "c826b79ad3a2f10d4d4807632e45eea163e49824a888f87271f6fc2e296cbf09";
  };

  propagatedBuildInputs = [ image-geometry marker-msgs cv-bridge dynamic-reconfigure std-msgs tf roscpp rospy ];
  nativeBuildInputs = [ marker-msgs cv-bridge catkin roscpp image-geometry rospy dynamic-reconfigure std-msgs tf ];

  meta = {
    description = ''This node does pose estimation for detected fiducials (marker_msgs/FiducialDetection.msg)'';
    #license = lib.licenses.BSD;
  };
}
