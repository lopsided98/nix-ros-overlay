
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, catkin, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, nodelet, pkg-config, roscpp, rospy, rostest, std-msgs, swri-geometry-util, swri-math-util, swri-nodelet, swri-opencv-util, swri-roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-swri-image-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_image_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "492f2c86f954f484370800a15e30de0e610cf7398e103d07c9784a5eace8c697";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config swri-nodelet ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost camera-calibration-parsers cv-bridge eigen geometry-msgs image-geometry image-transport message-filters nav-msgs nodelet roscpp rospy std-msgs swri-geometry-util swri-math-util swri-opencv-util swri-roscpp tf ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = "swri_image_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
