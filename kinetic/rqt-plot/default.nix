
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, qt-gui-py-common, std-msgs, rosgraph, rqt-py-common, pythonPackages, catkin, rostopic, rqt-gui-py, qwt-dependency, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-plot";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_plot-release/archive/release/kinetic/rqt_plot/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "a5af60dcd95878b5b9cb7c8195cecc9d7ecd88f1666ed22662d6d325acebaf9b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui pythonPackages.numpy pythonPackages.matplotlib qt-gui-py-common std-msgs rosgraph rqt-py-common pythonPackages.rospkg rostopic rqt-gui-py qwt-dependency python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
