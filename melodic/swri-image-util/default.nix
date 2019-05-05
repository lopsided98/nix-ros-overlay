
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, rospy, tf, geometry-msgs, camera-calibration-parsers, image-transport, swri-nodelet, message-filters, pkg-config, swri-opencv-util, swri-math-util, catkin, nav-msgs, std-msgs, swri-geometry-util, nodelet, roscpp, swri-roscpp, rostest, eigen }:
buildRosPackage {
  pname = "ros-melodic-swri-image-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_image_util/2.8.0-0.tar.gz;
    sha256 = "3a7e532504ecfbeb15fbbb88f5dfb42f8d63a8fe946cbf7aa339a3d52f257653";
  };

  buildInputs = [ swri-math-util camera-calibration-parsers image-transport swri-nodelet message-filters cv-bridge roscpp image-geometry swri-roscpp nav-msgs nodelet rospy std-msgs swri-geometry-util tf swri-opencv-util geometry-msgs eigen ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ swri-math-util camera-calibration-parsers image-transport cv-bridge message-filters roscpp image-geometry swri-roscpp nav-msgs nodelet rospy std-msgs swri-geometry-util tf swri-opencv-util geometry-msgs eigen ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_image_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
