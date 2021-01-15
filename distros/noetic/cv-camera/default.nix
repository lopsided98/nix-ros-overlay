
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, image-transport, nodelet, opencv3, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cv-camera";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/OTL/cv_camera-release/archive/release/noetic/cv_camera/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "d28ff8d89e6f26235c50b2bc1a60d712378bd2b5085b71ff2b21f5a330dc15f8";
  };

  buildType = "catkin";
  buildInputs = [ roslint rostest ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport nodelet opencv3 roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cv_camera uses OpenCV capture object to capture camera image.
  This supports camera_image and nodelet.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
