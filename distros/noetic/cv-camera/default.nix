
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, image-transport, nodelet, opencv, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cv-camera";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/OTL/cv_camera-release/archive/release/noetic/cv_camera/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "fe2a15b06ca996cdf5eb2272ec070d5b6e7cc442abb7d17e48ced7c3bc73afa4";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint rostest ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-transport nodelet opencv opencv.cxxdev roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cv_camera uses OpenCV capture object to capture camera image.
  This supports camera_image and nodelet.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
