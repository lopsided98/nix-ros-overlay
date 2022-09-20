
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-proc, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-noetic-stereo-image-proc";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/stereo_image_proc/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "237fcc2babed3db90c04c6e43c4a67e10b1bf5fc4be0b653e8a4e2e16b7a1e67";
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
