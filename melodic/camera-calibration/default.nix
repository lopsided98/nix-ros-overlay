
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, sensor-msgs, catkin, cv-bridge, message-filters, image-geometry, rostest, rospy }:
buildRosPackage {
  pname = "ros-melodic-camera-calibration";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/camera_calibration/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "5577d92469b4793887ee0b8496c46dcd0c83e53bf1eab4d33bad51d598e65cfc";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs sensor-msgs cv-bridge message-filters image-geometry rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
