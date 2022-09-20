
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, message-filters, rospy, rostest, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-camera-calibration";
  version = "1.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/camera_calibration/1.15.2-1.tar.gz";
    name = "1.15.2-1.tar.gz";
    sha256 = "f383771fde50848fb35e7dacc89351e9ac856f5b50c7c15d02d5b69dec321e04";
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
