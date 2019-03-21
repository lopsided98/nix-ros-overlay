
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, katana-msgs, sensor-msgs, catkin, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-katana-teleop";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_teleop/1.1.2-0.tar.gz;
    sha256 = "ba6a7c0cc003c5929474b50c163471adf1778ff42770de6043e70c4e7b209326";
  };

  propagatedBuildInputs = [ control-msgs actionlib sensor-msgs roscpp katana-msgs ];
  nativeBuildInputs = [ catkin control-msgs actionlib sensor-msgs roscpp katana-msgs ];

  meta = {
    description = ''This package provides tele-operation nodes to control the Neuronics Katana 450 arm via keyboard commands or with a playstation 3 controller.'';
    #license = lib.licenses.GPL;
  };
}
