
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, trajectory-msgs, sensor-msgs, catkin, cob-srvs, actionlib, std-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-trajectory-controller";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_trajectory_controller/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "eb4103ec8cbc02689af82e5b826aa5bb909df5c571eff9e8ca8f0de9cf89936c";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs control-msgs trajectory-msgs sensor-msgs cob-srvs actionlib std-msgs dynamic-reconfigure roscpp ];
  propagatedBuildInputs = [ std-srvs control-msgs trajectory-msgs sensor-msgs cob-srvs actionlib std-msgs dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
