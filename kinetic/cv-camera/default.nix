
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, camera-info-manager, catkin, roslint, image-transport, cv-bridge, nodelet, roscpp, rostest, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cv-camera";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/OTL/cv_camera-release/archive/release/kinetic/cv_camera/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "a89967f570dea9bf79137fe0b32f08b56d44159c48d516c3c8aecdb20437211f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs camera-info-manager roslint image-transport cv-bridge nodelet roscpp rostest opencv3 ];
  propagatedBuildInputs = [ sensor-msgs camera-info-manager roscpp image-transport cv-bridge nodelet opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cv_camera uses OpenCV capture object to capture camera image.
  This supports camera_image and nodelet.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
