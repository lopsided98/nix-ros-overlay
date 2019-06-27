
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, image-geometry, rospy, tf, geometry-msgs, camera-calibration-parsers, image-transport, swri-nodelet, message-filters, pkg-config, swri-opencv-util, swri-math-util, catkin, nav-msgs, std-msgs, swri-geometry-util, nodelet, roscpp, swri-roscpp, rostest, eigen }:
buildRosPackage {
  pname = "ros-kinetic-swri-image-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_image_util/2.9.0-1.tar.gz;
    sha256 = "c8da0c795eae16e792bd265729861d1c552c646a875a564398c0ca0fdb98e83d";
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
