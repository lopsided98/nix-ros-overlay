
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rosserial-msgs, nav-msgs, message-runtime, rospy, std-msgs, rosserial-client, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosserial-windows";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_windows/0.8.0-0.tar.gz;
    sha256 = "620b3a46eb5abe13e626c55510ee6175e35b0548be995208f0b062cbb02c7089";
  };

  propagatedBuildInputs = [ rospy rosserial-msgs message-runtime rosserial-client ];
  nativeBuildInputs = [ nav-msgs rosserial-client std-msgs sensor-msgs catkin geometry-msgs ];

  meta = {
    description = ''rosserial for Windows platforms.'';
    #license = lib.licenses.BSD;
  };
}
