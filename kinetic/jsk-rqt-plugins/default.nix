
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-pipeline, rqt-gui-py, image-view2, mk, rosbuild, pythonPackages, rqt-gui, jsk-gui-msgs, cv-bridge, catkin, rostest, message-generation, resource-retriever, message-runtime, rqt-image-view, rqt-plot, roslaunch, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-kinetic-jsk-rqt-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rqt_plugins/2.1.5-0.tar.gz;
    sha256 = "8698bc19de56736e892bf3a00f6c1d19062a47f763687cbe3cd48a1232f02829";
  };

  buildInputs = [ mk image-view2 message-generation rosbuild ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ image-pipeline rqt-gui-py image-view2 pythonPackages.urlgrabber rqt-gui pythonPackages.scikitlearn jsk-gui-msgs cv-bridge resource-retriever message-runtime rqt-image-view rqt-plot qt-gui-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_rqt_plugins package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
