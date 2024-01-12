
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, flatland-msgs, flatland-server, nav-msgs, pluginlib, roscpp, sensor-msgs, std-msgs, tf, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-flatland-plugins";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland_plugins/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "9e4553382a4d1cbed1995407259c6fc5f56be4e8fad368a3fcc97cb3a9395925";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules flatland-msgs flatland-server nav-msgs pluginlib roscpp sensor-msgs std-msgs tf yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Default plugins for flatland'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
