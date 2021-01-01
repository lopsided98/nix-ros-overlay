
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-calibration-parsers, catkin, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, nodelet, pkg-config, roscpp, rospy, rostest, std-msgs, swri-geometry-util, swri-math-util, swri-nodelet, swri-opencv-util, swri-roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-swri-image-util";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_image_util/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "06089bd72e38de3c6490d0760537face450d4985e3f0c3118a04a123c6948dde";
  };

  buildType = "catkin";
  buildInputs = [ swri-nodelet ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost camera-calibration-parsers cv-bridge eigen geometry-msgs image-geometry image-transport message-filters nav-msgs nodelet roscpp rospy std-msgs swri-geometry-util swri-math-util swri-opencv-util swri-roscpp tf ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''swri_image_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
