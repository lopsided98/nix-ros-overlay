
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-geometry, image-proc, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-melodic-stereo-image-proc";
  version = "1.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/stereo_image_proc/1.15.2-1.tar.gz";
    name = "1.15.2-1.tar.gz";
    sha256 = "0eb1ce0600f114d0ba5e2e145c05c4cc0b76c8fcd92186100851b0ddaf56c0e3";
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
