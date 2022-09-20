
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-publisher";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/image_publisher/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "04cdb1afadfb60be9f09d024cdd364c76c5a2d3719809e9bf7d78fb83a7fa93e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
