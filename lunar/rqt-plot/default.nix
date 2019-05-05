
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, python-qt-binding, qwt-dependency, catkin, rqt-gui, pythonPackages, rosgraph, rostopic, std-msgs, rqt-py-common, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-lunar-rqt-plot";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_plot-release/archive/release/lunar/rqt_plot/0.4.8-0.tar.gz;
    sha256 = "ccf117e06d080f1f11bcd66bdfab0f4a7763d92160352d5473509bb0c090016e";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.numpy pythonPackages.rospkg qwt-dependency rqt-gui qt-gui-py-common rosgraph rostopic std-msgs rqt-py-common python-qt-binding pythonPackages.matplotlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
