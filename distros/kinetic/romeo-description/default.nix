
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, robot-state-publisher, roscpp, sensor-msgs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-romeo-description";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-aldebaran/romeo_robot-release/archive/release/kinetic/romeo_description/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "0bdfd0b3e21fbc88572fc35d8918e1db00d01930df987f118efec96c63ff4ee0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-filters robot-state-publisher roscpp sensor-msgs tf urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The romeo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
