
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, mk, moveit-msgs, roseus, rostest, tf }:
buildRosPackage {
  pname = "ros-melodic-jsk-ik-server";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/jsk_ik_server/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "8d705013bf546733015f6a8a8ed8683ce94613c8de2b6057b6ecf9e181f04866";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules mk moveit-msgs roseus rostest tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk_ik_server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
