
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, gazebo-ros, catkin, pythonPackages, rostest, collada-urdf-jsk-patch }:
buildRosPackage {
  pname = "ros-lunar-eusurdf";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_model_tools-release/archive/release/lunar/eusurdf/0.4.3-0.tar.gz;
    sha256 = "d154203dde8297dd08c78cba6b0db83cad28fbfadff719fa8fdee44e0ee33e30";
  };

  buildInputs = [ roseus gazebo-ros rostest pythonPackages.lxml collada-urdf-jsk-patch ];
  propagatedBuildInputs = [ gazebo-ros rostest collada-urdf-jsk-patch pythonPackages.lxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    #license = lib.licenses.BSD;
  };
}
