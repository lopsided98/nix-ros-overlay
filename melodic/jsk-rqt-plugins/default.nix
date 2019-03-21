
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-pipeline, rqt-gui-py, image-view2, mk, rqt-gui, jsk-gui-msgs, pythonPackages, cv-bridge, catkin, rosbuild, rostest, message-generation, resource-retriever, message-runtime, rqt-image-view, rqt-plot, roslaunch, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-melodic-jsk-rqt-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_rqt_plugins/2.1.5-0.tar.gz;
    sha256 = "c2205a66a68f133e6e9f7fb7dbbb8448c5291b3b077c542ea1bca58a08942527";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ image-pipeline rqt-gui-py image-view2 pythonPackages.urlgrabber pythonPackages.scikitlearn rqt-gui jsk-gui-msgs cv-bridge resource-retriever message-runtime rqt-image-view rqt-plot qt-gui-py-common ];
  nativeBuildInputs = [ image-view2 message-generation mk catkin rosbuild ];

  meta = {
    description = ''The jsk_rqt_plugins package'';
    #license = lib.licenses.BSD;
  };
}
