
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf, image-transport, sensor-msgs, catkin, cv-bridge, pythonPackages, message-filters, image-geometry, rostest, message-generation, message-runtime, image-view, pcl-ros, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-view2";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/melodic/image_view2/2.2.10-0.tar.gz;
    sha256 = "fc10ec510f70e52bb26455ddc62237f9b9c3dfa77819fa84c140d41617db004c";
  };

  buildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters roscpp image-geometry rostest message-generation image-view pcl-ros std-msgs tf geometry-msgs ];
  checkInputs = [ pythonPackages.numpy pythonPackages.scipy ];
  propagatedBuildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters roscpp image-geometry message-runtime image-view pcl-ros std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics with draw-on features'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
