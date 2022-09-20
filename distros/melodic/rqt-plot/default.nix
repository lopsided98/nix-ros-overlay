
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-gui-py-common, qwt-dependency, rosgraph, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-plot";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_plot-release/archive/release/melodic/rqt_plot/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "8ad543629315c87c8694d9efe79df4026582cea73d9183774b523e6fcb8a089a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.matplotlib pythonPackages.numpy pythonPackages.rospkg qt-gui-py-common qwt-dependency rosgraph rostopic rqt-gui rqt-gui-py rqt-py-common std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_plot provides a GUI plugin visualizing numeric values in a 2D plot using different plotting backends.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
