
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-plot, image-pipeline, message-runtime, qt-gui-py-common, resource-retriever, rqt-image-view, pythonPackages, catkin, image-view2, jsk-gui-msgs, rqt-gui-py, cv-bridge, message-generation, rosbuild, roslaunch, rostest, mk }:
buildRosPackage {
  pname = "ros-kinetic-jsk-rqt-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rqt_plugins/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "8698bc19de56736e892bf3a00f6c1d19062a47f763687cbe3cd48a1232f02829";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rosbuild image-view2 mk ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ rqt-gui rqt-plot image-pipeline resource-retriever qt-gui-py-common rqt-image-view pythonPackages.scikitlearn jsk-gui-msgs image-view2 rqt-gui-py cv-bridge pythonPackages.urlgrabber message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_rqt_plugins package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
