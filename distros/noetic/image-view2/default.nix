
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, image-geometry, image-transport, image-view, message-filters, message-generation, message-runtime, pcl-ros, python3Packages, roscpp, rostest, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-image-view2";
  version = "2.2.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common-release/archive/release/noetic/image_view2/2.2.15-4.tar.gz";
    name = "2.2.15-4.tar.gz";
    sha256 = "3329ca3028bb530671b24af2a128d19ef80e1a6881805256fdf30d2ea03d79fa";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  checkInputs = [ python3Packages.numpy python3Packages.scipy ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-geometry image-transport image-view message-filters message-runtime pcl-ros roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A simple viewer for ROS image topics with draw-on features";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
