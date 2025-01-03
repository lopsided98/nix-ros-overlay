
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-publisher, image-view2, jsk-gui-msgs, message-generation, message-runtime, mk, python3Packages, qt-gui-py-common, resource-retriever, rosbuild, roslaunch, rostest, rqt-gui, rqt-gui-py, rqt-image-view, rqt-plot }:
buildRosPackage {
  pname = "ros-noetic-jsk-rqt-plugins";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_rqt_plugins/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "1e7113c87125d09ac58d876e4af69b15190e49ba3b548b47adebc95e74b7163f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation mk rosbuild ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ cv-bridge image-publisher image-view2 jsk-gui-msgs message-runtime python3Packages.scikitlearn qt-gui-py-common resource-retriever rqt-gui rqt-gui-py rqt-image-view rqt-plot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The jsk_rqt_plugins package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
