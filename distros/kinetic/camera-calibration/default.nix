
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-geometry, message-filters, rospy, rostest, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-camera-calibration";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/camera_calibration/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "c81af01ce1714a1940ffdb3b1f2f29a7ae6a582ffa934286770da36d8ef9a395";
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
