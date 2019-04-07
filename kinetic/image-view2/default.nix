
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf, image-transport, sensor-msgs, catkin, cv-bridge, pythonPackages, message-filters, image-geometry, rostest, message-generation, message-runtime, image-view, pcl-ros, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-image-view2";
  version = "2.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_common-release/archive/release/kinetic/image_view2/2.2.10-0.tar.gz;
    sha256 = "9c473c39749144320448406e22c8ed262cda2c901b9f231b5d749a0bf539d44e";
  };

  buildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters roscpp image-geometry rostest message-generation image-view pcl-ros std-msgs tf geometry-msgs ];
  checkInputs = [ pythonPackages.numpy pythonPackages.scipy ];
  propagatedBuildInputs = [ std-srvs image-transport sensor-msgs cv-bridge message-filters roscpp image-geometry message-runtime image-view pcl-ros std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics with draw-on features'';
    #license = lib.licenses.BSD;
  };
}
