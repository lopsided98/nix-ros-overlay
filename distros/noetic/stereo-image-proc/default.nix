
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-proc, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-noetic-stereo-image-proc";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/stereo_image_proc/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "36398fab41a1537f4359f0ff615493a66c6b660bc8facbb4a3c9e2fd72ce9d9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-geometry image-proc image-transport message-filters nodelet sensor-msgs stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stereo and single image rectification and disparity processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
