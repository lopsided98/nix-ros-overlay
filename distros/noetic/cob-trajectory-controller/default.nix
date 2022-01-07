
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-srvs, control-msgs, dynamic-reconfigure, roscpp, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-trajectory-controller";
  version = "0.8.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_trajectory_controller/0.8.17-1.tar.gz";
    name = "0.8.17-1.tar.gz";
    sha256 = "fa2a6fd07b027ece5b8658aec077cf30955745f1eb6736cbbb24086f86dcbc86";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cob-srvs control-msgs dynamic-reconfigure roscpp sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
