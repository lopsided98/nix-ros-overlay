
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-trajectory-controller, position-controllers, cob-description, cob-omni-drive-controller, cob-supported-robots, joint-state-controller, rviz, robot-state-publisher, roslaunch, joint-state-publisher, xacro, catkin, velocity-controllers, diagnostic-aggregator, costmap-2d, raw-description, ur-description, rostest, laser-filters, cob-calibration-data }:
buildRosPackage {
  pname = "ros-kinetic-cob-hardware-config";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_hardware_config/0.6.11-0.tar.gz;
    sha256 = "65d497c7f4af3aec8291e0bffb04124792ca956e94dc6c30a392eb09567cba0a";
  };

  propagatedBuildInputs = [ costmap-2d joint-state-controller raw-description ur-description velocity-controllers cob-calibration-data joint-trajectory-controller rostest position-controllers laser-filters cob-description rviz robot-state-publisher cob-omni-drive-controller diagnostic-aggregator roslaunch joint-state-publisher xacro ];
  nativeBuildInputs = [ rostest roslaunch catkin cob-supported-robots ];

  meta = {
    description = ''This package contains configuration for each robot instance (e.g. cob4-X, raw3-X). There is a directory for each robot with configuration about urdf and hardware/device configurations.'';
    #license = lib.licenses.Apache 2.0;
  };
}
