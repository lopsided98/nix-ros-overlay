
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, nodelet, pkg-config, roscpp, rospy, rostest, std-msgs, swri-geometry-util, swri-math-util, swri-nodelet, swri-opencv-util, swri-roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-swri-image-util";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_image_util/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "1a4fe76c9b0800ce8d4f6d073703ab4936610d8b6982d8e9f68d803b9f160396";
  };

  buildType = "catkin";
  buildInputs = [ swri-nodelet ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers cv-bridge eigen geometry-msgs image-geometry image-transport message-filters nav-msgs nodelet roscpp rospy std-msgs swri-geometry-util swri-math-util swri-opencv-util swri-roscpp tf ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_image_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
