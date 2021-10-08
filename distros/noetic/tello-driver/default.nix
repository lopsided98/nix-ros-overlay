
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-tello-driver";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/noetic/tello_driver/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "54774c8bb9bc3b962475b47a5ccd8d6b7b93b2d22140169a9ba0691c4f1dfb05";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge geometry-msgs mavros mavros-msgs rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tello_driver package'';
    license = with lib.licenses; [ mit ];
  };
}
