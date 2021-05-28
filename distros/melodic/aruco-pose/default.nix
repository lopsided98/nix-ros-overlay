
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-publisher, image-transport, message-generation, message-runtime, nodelet, ros-pytest, roscpp, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-aruco-pose";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/aruco_pose/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "56de0156088bf874c4adbc573265f2a5416cf102692e44256a6d10bdae5e7bdd";
  };

  buildType = "catkin";
  checkInputs = [ image-publisher ros-pytest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure geometry-msgs image-transport message-generation message-runtime nodelet roscpp rostest sensor-msgs std-msgs tf tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Positioning with ArUco markers'';
    license = with lib.licenses; [ mit ];
  };
}
