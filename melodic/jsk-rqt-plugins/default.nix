
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-plot, image-pipeline, message-runtime, qt-gui-py-common, resource-retriever, rqt-image-view, pythonPackages, catkin, image-view2, jsk-gui-msgs, rqt-gui-py, cv-bridge, message-generation, rosbuild, roslaunch, rostest, mk }:
buildRosPackage {
  pname = "ros-melodic-jsk-rqt-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_rqt_plugins/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "c2205a66a68f133e6e9f7fb7dbbb8448c5291b3b077c542ea1bca58a08942527";
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
