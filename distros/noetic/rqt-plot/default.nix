
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-gui-py-common, qwt-dependency, rosgraph, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-plot";
  version = "0.4.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_plot-release/archive/release/noetic/rqt_plot/0.4.16-1.tar.gz";
    name = "0.4.16-1.tar.gz";
    sha256 = "1a021b50150a8336fc4fd3442b4202b51d0e7656457d932ac7bd9fbc84d63a08";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.matplotlib python3Packages.numpy python3Packages.rospkg qt-gui-py-common qwt-dependency rosgraph rostopic rqt-gui rqt-gui-py rqt-py-common std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
