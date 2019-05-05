
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui }:
buildRosPackage {
  pname = "ros-lunar-rqt-gui";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt-release/archive/release/lunar/rqt_gui/0.5.0-0.tar.gz;
    sha256 = "575355afe8503c4c1fbe421ad164c50b736edea60f2391909d81cbf870521cab";
  };

  buildInputs = [ qt-gui ];
  propagatedBuildInputs = [ catkin qt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
