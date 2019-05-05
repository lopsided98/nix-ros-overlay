
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, sensor-msgs, catkin, cv-bridge, message-filters, image-geometry, rostest, rospy }:
buildRosPackage {
  pname = "ros-melodic-camera-calibration";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/camera_calibration/1.12.23-0.tar.gz;
    sha256 = "12493d808dd8edcdfa7e569b70cd8be685c22df027f8dc0fabe6d56ed25e2586";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs sensor-msgs cv-bridge message-filters image-geometry rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration allows easy calibration of monocular or stereo
     cameras using a checkerboard calibration target.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
