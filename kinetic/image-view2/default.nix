
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-geometry, image-transport, image-view, message-filters, message-generation, message-runtime, pcl-ros, pythonPackages, roscpp, rostest, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-image-view2";
  version = "2.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/kinetic/image_view2/2.2.10-0.tar.gz";
    name = "2.2.10-0.tar.gz";
    sha256 = "9c473c39749144320448406e22c8ed262cda2c901b9f231b5d749a0bf539d44e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rostest ];
  checkInputs = [ pythonPackages.numpy pythonPackages.scipy ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-geometry image-transport image-view message-filters message-runtime pcl-ros roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics with draw-on features'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
