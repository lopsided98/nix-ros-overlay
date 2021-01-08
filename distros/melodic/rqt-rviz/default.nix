
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pluginlib, qt5, rqt-gui, rqt-gui-cpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-rqt-rviz";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_rviz-release/archive/release/melodic/rqt_rviz/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "23e3aa89701e33665c95e1bd0f0df853a52a8bfd433c352071ba9ff597b8ecb7";
  };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase ];
  propagatedBuildInputs = [ boost pluginlib rqt-gui rqt-gui-cpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_rviz provides a GUI plugin embedding <a href="http://www.ros.org/wiki/rviz">RViz</a>.
    Note that this rqt plugin does NOT supersede RViz but depends on it.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
