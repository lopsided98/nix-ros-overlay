
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-tello-driver";
  version = "1.3.9-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/tello_driver/1.3.9-1.tar.gz";
    name = "1.3.9-1.tar.gz";
    sha256 = "669e86532e3a89d0f4b2a21e1e61193f8db66984608f3e592332f390e0660cb4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge geometry-msgs mavros mavros-msgs rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tello_driver package'';
    license = with lib.licenses; [ mit ];
  };
}
