
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-runtime, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-switchbot-ros";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/switchbot_ros/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "328df93d029dd75726982089e88ce3112d497a3ec7c2df4bfd5e8c8b8035ff08";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-runtime pythonPackages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''use switchbot with ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
