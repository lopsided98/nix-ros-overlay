
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, sensor-msgs, catkin, ecl-threads, nodelet, std-msgs, roscpp, geometry-msgs, yocs-controllers }:
buildRosPackage {
  pname = "ros-kinetic-yocs-safety-controller";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_safety_controller/0.8.2-0.tar.gz;
    sha256 = "d500af378978a73c9a0112fe1ea6329a04366731794ccabc8c9c1cc26e3008ec";
  };

  buildInputs = [ pluginlib nodelet geometry-msgs std-msgs sensor-msgs roscpp yocs-controllers ecl-threads ];
  propagatedBuildInputs = [ pluginlib nodelet geometry-msgs std-msgs sensor-msgs roscpp yocs-controllers ecl-threads ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller ensuring the safe operation of your robot.

    The SafetyController listens to ranger readings in order to stop (and move back), if obstacles get to close.

    This controller can be enabled/disabled.'';
    #license = lib.licenses.BSD;
  };
}
