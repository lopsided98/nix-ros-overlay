
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-joy-listener";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/joy_listener/0.2.4-0.tar.gz;
    sha256 = "55b1bf4cf89b9ea2a405f878640a53c30f9205b7a328b88f2052629994e697f3";
  };

  buildInputs = [ sensor-msgs rospy ];
  propagatedBuildInputs = [ sensor-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translates joy msgs'';
    #license = lib.licenses.BSD;
  };
}
