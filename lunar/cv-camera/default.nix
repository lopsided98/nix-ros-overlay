
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, camera-info-manager, image-transport, sensor-msgs, cv-bridge, catkin, rostest, nodelet, roscpp, opencv3 }:
buildRosPackage {
  pname = "ros-lunar-cv-camera";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/OTL/cv_camera-release/archive/release/lunar/cv_camera/0.2.1-0.tar.gz;
    sha256 = "4f7bc93befa19a82231fb3bcc09abc1e0f0e14ef22e12f28d38c10214e95b7d6";
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
