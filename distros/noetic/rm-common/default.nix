
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, dynamic-reconfigure, eigen, geometry-msgs, realtime-tools, rm-msgs, roscpp, roslint, tf }:
buildRosPackage {
  pname = "ros-noetic-rm-common";
  version = "0.1.1-r5";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_common/0.1.1-5.tar.gz";
    name = "0.1.1-5.tar.gz";
    sha256 = "3b416613a6cd85b83de05616a3e7d1e12c1ae98afd778b68e7b5d364415dab6c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs dynamic-reconfigure eigen geometry-msgs realtime-tools rm-msgs roscpp roslint tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_common package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
