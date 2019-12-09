
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, message-filters, geometry-msgs, message-runtime, std-msgs, std-srvs, pythonPackages, tf, catkin, image-transport, image-view, cv-bridge, roscpp, message-generation, rostest, image-geometry }:
buildRosPackage {
  pname = "ros-kinetic-image-view2";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/image_view2/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "9c473c39749144320448406e22c8ed262cda2c901b9f231b5d749a0bf539d44e";
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
