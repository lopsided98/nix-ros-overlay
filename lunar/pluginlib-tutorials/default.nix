
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-lunar-pluginlib-tutorials";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/lunar/pluginlib_tutorials/0.1.10-0.tar.gz;
    sha256 = "202db474a1cef5a9e9f2c71592659ad47b29ed38ee4a6cceb0de681df9c64744";
  };

  buildInputs = [ roscpp pluginlib ];
  propagatedBuildInputs = [ roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pluginlib_tutorials package'';
    #license = lib.licenses.BSD;
  };
}
