
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-publisher, image-transport, message-generation, message-runtime, nodelet, ros-pytest, roscpp, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-aruco-pose";
  version = "0.21.2-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/clover-release/archive/release/melodic/aruco_pose/0.21.2-1.tar.gz";
    name = "0.21.2-1.tar.gz";
    sha256 = "2506649647c6e2372fe659fe72c03888aefe3fa5a395c765a4d381def7be84ce";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ image-publisher ros-pytest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure geometry-msgs image-transport message-generation message-runtime nodelet roscpp rostest sensor-msgs std-msgs tf tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Positioning with ArUco markers'';
    license = with lib.licenses; [ mit ];
  };
}
