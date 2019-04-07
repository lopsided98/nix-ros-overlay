
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, cv-bridge, nodelet, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-melodic-image-publisher";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_publisher/1.12.23-0.tar.gz;
    sha256 = "56bebe095951f6cfb7e0d4c0250ed2dea459b085b214b9e21cdd93f4878efa4a";
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
