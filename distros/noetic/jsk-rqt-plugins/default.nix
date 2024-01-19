
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-publisher, image-view2, jsk-gui-msgs, message-generation, message-runtime, mk, python3Packages, qt-gui-py-common, resource-retriever, rosbuild, roslaunch, rostest, rqt-gui, rqt-gui-py, rqt-image-view, rqt-plot }:
buildRosPackage {
  pname = "ros-noetic-jsk-rqt-plugins";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_rqt_plugins/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "1018fa78ab28b6366e768e7e368e4566dcf910079c9704119fda55433b414a25";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation mk rosbuild ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ cv-bridge image-publisher image-view2 jsk-gui-msgs message-runtime python3Packages.scikitlearn qt-gui-py-common resource-retriever rqt-gui rqt-gui-py rqt-image-view rqt-plot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_rqt_plugins package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
