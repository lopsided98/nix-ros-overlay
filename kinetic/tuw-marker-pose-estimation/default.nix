
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, std-msgs, tf, catkin, marker-msgs, cv-bridge, roscpp, rospy, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-tuw-marker-pose-estimation";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/kinetic/tuw_marker_pose_estimation/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "c826b79ad3a2f10d4d4807632e45eea163e49824a888f87271f6fc2e296cbf09";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure std-msgs tf marker-msgs cv-bridge roscpp rospy image-geometry ];
  propagatedBuildInputs = [ dynamic-reconfigure std-msgs tf marker-msgs cv-bridge roscpp rospy image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This node does pose estimation for detected fiducials (marker_msgs/FiducialDetection.msg)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
