
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, dynamic-reconfigure, image-proc, catkin, image-transport, stereo-msgs, cv-bridge, nodelet, rostest, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-stereo-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/stereo_image_proc/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "30be9336043991e64fc422b3d70cd02af14b358db74ead19788c4ff5a284f6c9";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters dynamic-reconfigure image-proc image-transport stereo-msgs cv-bridge nodelet image-geometry ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ sensor-msgs message-filters dynamic-reconfigure image-proc image-transport stereo-msgs cv-bridge nodelet image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stereo and single image rectification and disparity processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
