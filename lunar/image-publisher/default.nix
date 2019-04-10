
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, cv-bridge, nodelet, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-lunar-image-publisher";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/lunar/image_publisher/1.12.23-0.tar.gz;
    sha256 = "c1fb0613a065963270d16920bef293c9c0df4aad5174bb70bacd24fd53b79719";
  };

  buildInputs = [ cv-bridge nodelet dynamic-reconfigure camera-info-manager image-transport sensor-msgs roscpp ];
  propagatedBuildInputs = [ cv-bridge nodelet dynamic-reconfigure camera-info-manager image-transport sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Contains a node publish an image stream from single image file
      or avi motion file.
    </p>'';
    #license = lib.licenses.BSD;
  };
}
