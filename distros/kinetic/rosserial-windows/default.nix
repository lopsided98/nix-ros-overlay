
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-runtime, nav-msgs, rospy, rosserial-client, rosserial-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-windows";
  version = "0.7.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_windows/0.7.7-0.tar.gz";
    name = "0.7.7-0.tar.gz";
    sha256 = "fe34cfdd30aef596edd2de90da2cc3dfe335bac7e1d80fd9c4037883c2726d86";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs nav-msgs sensor-msgs std-msgs ];
  propagatedBuildInputs = [ message-runtime rospy rosserial-client rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Windows platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
