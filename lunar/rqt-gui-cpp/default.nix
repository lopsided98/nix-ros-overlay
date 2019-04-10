
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-gui-cpp, qt-gui, qt5, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-lunar-rqt-gui-cpp";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt-release/archive/release/lunar/rqt_gui_cpp/0.5.0-0.tar.gz;
    sha256 = "522a720f3db0b4465af08f55bd3105c1f95146d4b87a72f66b05b93585cdccfb";
  };

  buildInputs = [ qt-gui-cpp roscpp qt-gui nodelet qt5.qtbase ];
  propagatedBuildInputs = [ qt-gui-cpp roscpp qt-gui nodelet ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_gui_cpp enables GUI plugins to use the C++ client library for ROS.'';
    #license = lib.licenses.BSD;
  };
}
