
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, message-filters, geometry-msgs, message-runtime, std-msgs, std-srvs, pythonPackages, tf, catkin, image-transport, image-view, cv-bridge, roscpp, message-generation, rostest, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-image-view2";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/image_view2/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "fc10ec510f70e52bb26455ddc62237f9b9c3dfa77819fa84c140d41617db004c";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs message-filters geometry-msgs std-msgs std-srvs tf image-view image-transport cv-bridge roscpp message-generation rostest image-geometry ];
  checkInputs = [ pythonPackages.numpy pythonPackages.scipy ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs message-filters geometry-msgs std-msgs std-srvs tf image-view image-transport cv-bridge roscpp message-runtime image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics with draw-on features'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
