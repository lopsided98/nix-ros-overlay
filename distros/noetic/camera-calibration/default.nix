
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, message-filters, rospy, rostest, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-camera-calibration";
  version = "1.15.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/camera_calibration/1.15.3-1.tar.gz";
    name = "1.15.3-1.tar.gz";
    sha256 = "3a608f8df6412fc0bf6f338119e5856ac49d133f16cae13e151abd8c262895ca";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge image-geometry message-filters rospy sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
