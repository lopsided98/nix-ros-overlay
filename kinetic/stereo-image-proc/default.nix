
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, image-geometry, rostest, dynamic-reconfigure, image-proc, nodelet, stereo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-stereo-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/stereo_image_proc/1.12.23-0.tar.gz;
    sha256 = "30be9336043991e64fc422b3d70cd02af14b358db74ead19788c4ff5a284f6c9";
  };

  buildInputs = [ image-transport sensor-msgs cv-bridge message-filters image-geometry dynamic-reconfigure image-proc nodelet stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ image-transport sensor-msgs cv-bridge message-filters image-geometry dynamic-reconfigure image-proc nodelet stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stereo and single image rectification and disparity processing.'';
    #license = lib.licenses.BSD;
  };
}
