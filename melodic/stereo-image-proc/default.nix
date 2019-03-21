
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, image-geometry, rostest, dynamic-reconfigure, image-proc, nodelet, stereo-msgs }:
buildRosPackage {
  pname = "ros-melodic-stereo-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/stereo_image_proc/1.12.23-0.tar.gz;
    sha256 = "78bcb2383214fce1c9747f1c2b48c380281e6a7e3457fb192997daff5e33045a";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge message-filters image-geometry dynamic-reconfigure image-proc nodelet stereo-msgs ];
  nativeBuildInputs = [ image-transport sensor-msgs cv-bridge message-filters catkin image-geometry dynamic-reconfigure image-proc nodelet stereo-msgs ];

  meta = {
    description = ''Stereo and single image rectification and disparity processing.'';
    #license = lib.licenses.BSD;
  };
}
