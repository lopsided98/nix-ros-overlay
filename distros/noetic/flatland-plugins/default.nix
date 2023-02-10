
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, flatland-msgs, flatland-server, libyamlcpp, nav-msgs, pluginlib, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-flatland-plugins";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/avidbots/flatland-release/archive/release/noetic/flatland_plugins/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "81efee9b1753084eb2df133d31e2e5ab5e8ab65ecf2d875e1849e834403f89b1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules flatland-msgs flatland-server libyamlcpp nav-msgs pluginlib roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Default plugins for flatland'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
