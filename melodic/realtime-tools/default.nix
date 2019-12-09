
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, rosunit, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-realtime-tools";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/melodic/realtime_tools/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "7f931948bd7454781ba1f93a1dd3642a561c97ce7668d8c4b8e862a1616bcb5d";
  };

  buildType = "catkin";
  buildInputs = [ roscpp ];
  checkInputs = [ actionlib rostest rosunit ];
  propagatedBuildInputs = [ actionlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
