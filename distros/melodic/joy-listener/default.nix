
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-joy-listener";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/joy_listener/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "c3a314410863c09fdf904cae518744a981c5290d9db85848d99f16df301d4351";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translates joy msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
