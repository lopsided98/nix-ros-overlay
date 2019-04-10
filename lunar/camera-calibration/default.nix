
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, sensor-msgs, catkin, cv-bridge, message-filters, image-geometry, rostest, rospy }:
buildRosPackage {
  pname = "ros-lunar-camera-calibration";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/camera_calibration/1.12.23-0.tar.gz;
    sha256 = "a31b7d9e95e16f1633cedf63575a07abf022419adc0476b5454ae3fa15509cde";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs rospy sensor-msgs cv-bridge message-filters image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.'';
    #license = lib.licenses.BSD;
  };
}
