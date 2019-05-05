
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-joy-listener";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/lunar/joy_listener/0.2.4-0.tar.gz;
    sha256 = "f7c9dd3793283666991d9615a2627ed046157737835cf698c5440b2c4d9489f3";
  };

  buildInputs = [ sensor-msgs rospy ];
  propagatedBuildInputs = [ sensor-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translates joy msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
