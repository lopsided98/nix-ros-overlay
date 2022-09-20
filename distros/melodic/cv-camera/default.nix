
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, image-transport, nodelet, opencv, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cv-camera";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/OTL/cv_camera-release/archive/release/melodic/cv_camera/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "7119fcb01b7e39953f38be82f00d3ddf63ce52c92732091df65239b7824044dd";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint rostest ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport nodelet opencv roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cv_camera uses OpenCV capture object to capture camera image.
  This supports camera_image and nodelet.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
