
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, image-transport, nodelet, opencv3, roscpp, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cv-camera";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/OTL/cv_camera-release/archive/release/kinetic/cv_camera/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "a89967f570dea9bf79137fe0b32f08b56d44159c48d516c3c8aecdb20437211f";
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
