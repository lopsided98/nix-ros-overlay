
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, cv-bridge, cv-camera, geographiclib, geometry-msgs, led-msgs, mavros, mavros-extras, message-generation, nodelet, pythonPackages, ros-pytest, rosbridge-server, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, tf2, tf2-geometry-msgs, tf2-ros, tf2-web-republisher, visualization-msgs, web-video-server }:
buildRosPackage {
  pname = "ros-melodic-clover";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/clover/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "65905f65df78466fe585a3417d513ba448fb2d2d55fe86f4b1649084fe14c4cc";
  };

  buildType = "catkin";
  buildInputs = [ catkin-virtualenv ];
  checkInputs = [ ros-pytest ];
  propagatedBuildInputs = [ cv-bridge cv-camera geographiclib geometry-msgs led-msgs mavros mavros-extras message-generation nodelet pythonPackages.lxml rosbridge-server roscpp rospy sensor-msgs std-msgs std-srvs tf tf2 tf2-geometry-msgs tf2-ros tf2-web-republisher visualization-msgs web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Clover package'';
    license = with lib.licenses; [ mit ];
  };
}
