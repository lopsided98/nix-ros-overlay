
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-publisher";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_publisher/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "8b0416edac96a5993367ff887c7187345ce36d6a2e52c0f7cd5d6501642d1da4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager cv-bridge dynamic-reconfigure image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Contains a node publish an image stream from single image file
      or avi motion file.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
