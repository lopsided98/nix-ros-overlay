
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, trajectory-msgs, sensor-msgs, catkin, cob-srvs, actionlib, std-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-trajectory-controller";
  version = "0.7.4";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_trajectory_controller/0.7.4-0.tar.gz;
    sha256 = "91020bad163796e64c526322bde2b074d272b246b20a1e3877ab05fc7ee0e971";
  };

  buildInputs = [ std-srvs control-msgs trajectory-msgs sensor-msgs cob-srvs actionlib std-msgs dynamic-reconfigure roscpp ];
  propagatedBuildInputs = [ std-srvs control-msgs trajectory-msgs sensor-msgs cob-srvs actionlib std-msgs dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].'';
    #license = lib.licenses.Apache 2.0;
  };
}
