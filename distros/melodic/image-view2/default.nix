
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-geometry, image-transport, image-view, message-filters, message-generation, message-runtime, pcl-ros, pythonPackages, roscpp, rostest, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-image-view2";
  version = "2.2.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/melodic/image_view2/2.2.12-1.tar.gz";
    name = "2.2.12-1.tar.gz";
    sha256 = "6ca6f03b21bd7feee26a9935b7f2eea8fa7c3c4e9dccf12013b415d4b7c61a50";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  checkInputs = [ pythonPackages.numpy pythonPackages.scipy ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-geometry image-transport image-view message-filters message-runtime pcl-ros roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A simple viewer for ROS image topics with draw-on features'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
