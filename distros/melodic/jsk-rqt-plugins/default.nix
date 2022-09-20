
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, image-publisher, image-view2, jsk-gui-msgs, message-generation, message-runtime, mk, pythonPackages, qt-gui-py-common, resource-retriever, rosbuild, roslaunch, rostest, rqt-gui, rqt-gui-py, rqt-image-view, rqt-plot }:
buildRosPackage {
  pname = "ros-melodic-jsk-rqt-plugins";
  version = "2.1.8-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_rqt_plugins/2.1.8-1.tar.gz";
    name = "2.1.8-1.tar.gz";
    sha256 = "516b5b98d4e1aa2fdb5c7c6f1dee109b9025e544923f9a25d2f425db8b47d9c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation mk rosbuild ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ cv-bridge image-publisher image-view2 jsk-gui-msgs message-runtime pythonPackages.scikitlearn pythonPackages.urlgrabber qt-gui-py-common resource-retriever rqt-gui rqt-gui-py rqt-image-view rqt-plot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_rqt_plugins package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
