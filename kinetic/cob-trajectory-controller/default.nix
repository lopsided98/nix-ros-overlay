
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, trajectory-msgs, sensor-msgs, catkin, cob-srvs, actionlib, std-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-trajectory-controller";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_trajectory_controller/0.7.3-0.tar.gz;
    sha256 = "560067f8191a713fd7844fba0d02fae610cc91de3fb424bed63bb4058ec69821";
  };

  propagatedBuildInputs = [ std-srvs control-msgs trajectory-msgs sensor-msgs cob-srvs actionlib std-msgs dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ std-srvs control-msgs trajectory-msgs sensor-msgs catkin cob-srvs actionlib std-msgs dynamic-reconfigure roscpp ];

  meta = {
    description = ''This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].'';
    #license = lib.licenses.Apache 2.0;
  };
}
