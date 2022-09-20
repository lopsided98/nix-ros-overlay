
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, message-filters, rospy, rostest, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-camera-calibration";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/camera_calibration/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "b350a3340fc9dbd6af21518aec375e7ade56e2a5b18f8cebba679a8e3e824557";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge image-geometry message-filters rospy sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
