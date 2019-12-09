
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, xacro, urdf, robot-state-publisher, tf, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-romeo-description";
  version = "0.1.5";

  src = fetchurl {
    url = "https://github.com/ros-aldebaran/romeo_robot-release/archive/release/kinetic/romeo_description/0.1.5-0.tar.gz";
    name = "0.1.5-0.tar.gz";
    sha256 = "0bdfd0b3e21fbc88572fc35d8918e1db00d01930df987f118efec96c63ff4ee0";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters xacro urdf tf roscpp ];
  propagatedBuildInputs = [ sensor-msgs xacro message-filters urdf robot-state-publisher tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The romeo_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
