
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, tf2-ros, image-geometry, tf2, rostest, eigen-conversions, nodelet, stereo-msgs }:
buildRosPackage {
  pname = "ros-lunar-depth-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/depth_image_proc/1.12.23-0.tar.gz;
    sha256 = "5e7e0fa9393109b9d2aca7e2106762a515e74752a662aba3a942d43040f99e96";
  };

  buildInputs = [ boost cmake-modules image-transport sensor-msgs cv-bridge message-filters tf2-ros image-geometry tf2 eigen-conversions nodelet stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost image-transport cv-bridge tf2-ros image-geometry tf2 eigen-conversions nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
