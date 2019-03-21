
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, cv-bridge, catkin, nodelet, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-image-publisher";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_publisher/1.12.23-0.tar.gz;
    sha256 = "791f74c3fa55e9cf2e16bb467dfd1f1ae4cb55a1502e51c5abde8cded3cc6d55";
  };

  propagatedBuildInputs = [ cv-bridge nodelet dynamic-reconfigure camera-info-manager image-transport sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin cv-bridge nodelet dynamic-reconfigure camera-info-manager image-transport sensor-msgs roscpp ];

  meta = {
    description = ''<p>
      Contains a node publish an image stream from single image file
      or avi motion file.
    </p>'';
    #license = lib.licenses.BSD;
  };
}
