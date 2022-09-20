
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, eigen-stl-containers, geometry-msgs, graph-msgs, ogre1_9, qt5, roscpp, roslint, rostest, rosunit, rviz, sensor-msgs, std-msgs, tf-conversions, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-rviz-visual-tools";
  version = "3.8.0-r4";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/rviz_visual_tools-release/archive/release/melodic/rviz_visual_tools/3.8.0-4.tar.gz";
    name = "3.8.0-4.tar.gz";
    sha256 = "4b4eb5dcac945413442686e3c37cb0f383c40fd7cb491044ca7e0505fffb2976";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ eigen-conversions eigen-stl-containers geometry-msgs graph-msgs ogre1_9 qt5.qtx11extras roscpp roslint rviz sensor-msgs std-msgs tf-conversions trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utility functions for displaying and debugging data in Rviz via published markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
