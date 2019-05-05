
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, python-qt-binding, qwt-dependency, catkin, rqt-gui, pythonPackages, rosgraph, rostopic, std-msgs, rqt-py-common, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-plot";
  version = "0.4.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_plot-release/archive/release/melodic/rqt_plot/0.4.9-0.tar.gz;
    sha256 = "226ffb18dfbf7e879f20e2aecae2243582a4fae28e74a1f7d3b291e68f6a28fb";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.numpy pythonPackages.rospkg qwt-dependency rqt-gui qt-gui-py-common rosgraph rostopic std-msgs rqt-py-common python-qt-binding pythonPackages.matplotlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
