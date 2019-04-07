
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rosserial-msgs, nav-msgs, message-runtime, rospy, std-msgs, rosserial-client, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-windows";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_windows/0.7.7-0.tar.gz;
    sha256 = "fe34cfdd30aef596edd2de90da2cc3dfe335bac7e1d80fd9c4037883c2726d86";
  };

  buildInputs = [ nav-msgs rosserial-client std-msgs sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ rospy rosserial-msgs message-runtime rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Windows platforms.'';
    #license = lib.licenses.BSD;
  };
}
