
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, qt-gui-py-common, std-msgs, rosgraph, rqt-py-common, pythonPackages, catkin, rostopic, rqt-gui-py, qwt-dependency, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-plot";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_plot-release/archive/release/melodic/rqt_plot/0.4.9-0.tar.gz";
    name = "0.4.9-0.tar.gz";
    sha256 = "226ffb18dfbf7e879f20e2aecae2243582a4fae28e74a1f7d3b291e68f6a28fb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui pythonPackages.numpy pythonPackages.matplotlib qt-gui-py-common std-msgs rosgraph rqt-py-common pythonPackages.rospkg rostopic rqt-gui-py qwt-dependency python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
