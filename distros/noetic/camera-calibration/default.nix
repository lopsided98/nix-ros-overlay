
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, message-filters, rospy, rostest, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-camera-calibration";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/camera_calibration/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "994c197fa74fcc8d8506e314e6fe5f42fc6f7be99855058e7c2457128d0a06f5";
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
