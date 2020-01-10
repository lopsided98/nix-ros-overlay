
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, nodelet, pkg-config, roscpp, rospy, rostest, std-msgs, swri-geometry-util, swri-math-util, swri-nodelet, swri-opencv-util, swri-roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-swri-image-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_image_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "b15af55204ceb5d8e128a6a31aac7d493b4047eb2fca230460bd66fe0d33814d";
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
