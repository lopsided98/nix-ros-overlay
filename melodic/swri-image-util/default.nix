
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, swri-opencv-util, tf, image-transport, eigen, nodelet, nav-msgs, rostest, message-filters, std-msgs, swri-geometry-util, swri-nodelet, catkin, cv-bridge, roscpp, pkg-config, rospy, camera-calibration-parsers, image-geometry, swri-roscpp, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-image-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_image_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "186a4786dbd54ee5bb0444651135d352be21d61b27c7bfb642c3451588b5bed1";
  };

  buildType = "catkin";
  buildInputs = [ message-filters geometry-msgs nav-msgs image-geometry swri-opencv-util std-msgs swri-math-util tf swri-nodelet swri-geometry-util image-transport eigen cv-bridge nodelet roscpp rospy camera-calibration-parsers swri-roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-filters geometry-msgs nav-msgs image-geometry std-msgs swri-opencv-util swri-math-util tf swri-geometry-util image-transport eigen cv-bridge nodelet roscpp rospy camera-calibration-parsers swri-roscpp ];
  nativeBuildInputs = [ pkg-config catkin ];

  meta = {
    description = ''swri_image_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
