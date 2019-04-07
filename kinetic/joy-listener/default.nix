
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-joy-listener";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/joy_listener/0.2.4-0.tar.gz;
    sha256 = "e9bd30cc98788deb6a8ca51733ee07569d541eec0c261229bd5ca627d87aecdc";
  };

  buildInputs = [ sensor-msgs rospy ];
  propagatedBuildInputs = [ sensor-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translates joy msgs'';
    #license = lib.licenses.BSD;
  };
}
