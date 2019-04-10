
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, qwt-dependency, rqt-gui, pythonPackages, catkin, rosgraph, rostopic, qt-gui-py-common, std-msgs, rqt-py-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-plot";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_plot-release/archive/release/lunar/rqt_plot/0.4.8-0.tar.gz;
    sha256 = "ccf117e06d080f1f11bcd66bdfab0f4a7763d92160352d5473509bb0c090016e";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.numpy python-qt-binding pythonPackages.rospkg qwt-dependency rqt-gui rosgraph rostopic std-msgs rqt-py-common qt-gui-py-common pythonPackages.matplotlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    #license = lib.licenses.BSD;
  };
}
