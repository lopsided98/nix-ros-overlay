
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, marker-msgs, tf, catkin, cv-bridge, image-geometry, rospy, std-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-melodic-tuw-marker-pose-estimation";
  version = "0.1.1-r1";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_marker_detection-release/archive/release/melodic/tuw_marker_pose_estimation/0.1.1-1.tar.gz;
    sha256 = "58ea5472112e231d213667c8977c5910de7398b71471b12a8a9e55dab48defd2";
  };

  buildInputs = [ image-geometry marker-msgs cv-bridge dynamic-reconfigure std-msgs tf roscpp rospy ];
  propagatedBuildInputs = [ image-geometry marker-msgs cv-bridge dynamic-reconfigure std-msgs tf roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This node does pose estimation for detected fiducials (marker_msgs/FiducialDetection.msg)'';
    #license = lib.licenses.BSD;
  };
}
