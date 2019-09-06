
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, rospy, tf, geometry-msgs, camera-calibration-parsers, image-transport, swri-nodelet, message-filters, pkg-config, swri-opencv-util, swri-math-util, catkin, nav-msgs, std-msgs, swri-geometry-util, nodelet, roscpp, swri-roscpp, rostest, eigen }:
buildRosPackage {
  pname = "ros-melodic-swri-image-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_image_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "d2b63c1130fc9bc87a1a42dfaf98447907b79151ddefa5c30d9c2e7644b2fa6c";
  };

  buildType = "catkin";
  buildInputs = [ swri-math-util camera-calibration-parsers image-transport swri-nodelet message-filters cv-bridge roscpp image-geometry swri-roscpp nav-msgs nodelet rospy std-msgs swri-geometry-util tf swri-opencv-util geometry-msgs eigen ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ swri-math-util camera-calibration-parsers image-transport cv-bridge message-filters roscpp image-geometry swri-roscpp nav-msgs nodelet rospy std-msgs swri-geometry-util tf swri-opencv-util geometry-msgs eigen ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_image_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
