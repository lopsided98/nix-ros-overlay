
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-calibration-data, cob-description, cob-omni-drive-controller, cob-supported-robots, costmap-2d, diagnostic-aggregator, joint-state-controller, joint-state-publisher, joint-state-publisher-gui, joint-trajectory-controller, laser-filters, position-controllers, raw-description, robot-state-publisher, roslaunch, rostest, rviz, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-hardware-config";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_hardware_config/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "9f3be4cb74f9fa2d63b09b56f48d31defa5866b8b5f2d2ad490f29b0b51a578c";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch rostest ];
  propagatedBuildInputs = [ cob-calibration-data cob-description cob-omni-drive-controller costmap-2d diagnostic-aggregator joint-state-controller joint-state-publisher joint-state-publisher-gui joint-trajectory-controller laser-filters position-controllers raw-description robot-state-publisher rviz velocity-controllers xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains configuration for each robot instance (e.g. cob4-X, raw3-X). There is a directory for each robot with configuration about urdf and hardware/device configurations.'';
    license = with lib.licenses; [ asl20 ];
  };
}
