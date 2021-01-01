
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-rviz-launchers";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_rviz_launchers/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "e49160d5d3ec08abf5e2be892c8df4554176223eaa5ea1c0d1210c916b60a248";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The kobuki_rviz_launchers package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
