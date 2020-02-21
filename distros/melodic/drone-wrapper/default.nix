
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, gazebo-ros, geometry-msgs, mavros, mavros-msgs, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-drone-wrapper";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_wrapper/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "d86c729dcfeb36890fe7bd4f7825e856e77dda955452debffdd1468a32cef4c8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge gazebo-ros geometry-msgs mavros mavros-msgs rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_wrapper package'';
    license = with lib.licenses; [ mit ];
  };
}
