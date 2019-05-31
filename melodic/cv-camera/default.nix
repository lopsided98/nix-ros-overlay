
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, camera-info-manager, image-transport, sensor-msgs, cv-bridge, catkin, rostest, nodelet, roscpp, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-cv-camera";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/OTL/cv_camera-release/archive/release/melodic/cv_camera/0.4.0-1.tar.gz;
    sha256 = "7119fcb01b7e39953f38be82f00d3ddf63ce52c92732091df65239b7824044dd";
  };

  buildInputs = [ roslint camera-info-manager image-transport sensor-msgs cv-bridge roscpp rostest nodelet opencv3 ];
  propagatedBuildInputs = [ camera-info-manager image-transport sensor-msgs cv-bridge roscpp nodelet opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cv_camera uses OpenCV capture object to capture camera image.
  This supports camera_image and nodelet.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}