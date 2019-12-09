
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, dynamic-reconfigure, camera-info-manager, catkin, image-transport, cv-bridge, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-image-publisher";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_publisher/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "791f74c3fa55e9cf2e16bb467dfd1f1ae4cb55a1502e51c5abde8cded3cc6d55";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure camera-info-manager image-transport cv-bridge nodelet roscpp ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure camera-info-manager image-transport cv-bridge nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Contains a node publish an image stream from single image file
      or avi motion file.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
