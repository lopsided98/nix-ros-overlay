
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-msgs, sensor-msgs, geometry-msgs, message-runtime, rosserial-client, std-msgs, catkin, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosserial-windows";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_windows/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "620b3a46eb5abe13e626c55510ee6175e35b0548be995208f0b062cbb02c7089";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs rosserial-client std-msgs nav-msgs ];
  propagatedBuildInputs = [ rosserial-msgs message-runtime rospy rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Windows platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
