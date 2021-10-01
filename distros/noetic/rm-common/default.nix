
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, dynamic-reconfigure, eigen, geometry-msgs, realtime-tools, rm-msgs, roscpp, roslint, tf }:
buildRosPackage {
  pname = "ros-noetic-rm-common";
  version = "0.1.7-r3";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_common/0.1.7-3.tar.gz";
    name = "0.1.7-3.tar.gz";
    sha256 = "8a385e0dccb4cbca7d1f7ffee9ac9a52a98ad261cce2a4f81974ec147079a298";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs dynamic-reconfigure eigen geometry-msgs realtime-tools rm-msgs roscpp roslint tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_common package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
