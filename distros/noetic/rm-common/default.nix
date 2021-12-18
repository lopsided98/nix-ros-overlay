
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, dynamic-reconfigure, eigen, geometry-msgs, realtime-tools, rm-msgs, roscpp, roslint, tf }:
buildRosPackage {
  pname = "ros-noetic-rm-common";
  version = "0.1.8-r2";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_common/0.1.8-2.tar.gz";
    name = "0.1.8-2.tar.gz";
    sha256 = "2b22d278701759dfc20d8906a2b75f360d702cd954269ef160a5ed9e37c9819f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs dynamic-reconfigure eigen geometry-msgs realtime-tools rm-msgs roscpp roslint tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rm_common package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
