
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, trajectory-msgs, sensor-msgs, catkin, cob-srvs, actionlib, std-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-trajectory-controller";
  version = "0.7.6-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_trajectory_controller/0.7.6-1.tar.gz;
    sha256 = "5c4a12786a9c604a1be515869588ca4eff35f5dd344add3e9074afca7988875f";
  };

  buildInputs = [ std-srvs control-msgs trajectory-msgs sensor-msgs cob-srvs actionlib std-msgs dynamic-reconfigure roscpp ];
  propagatedBuildInputs = [ std-srvs control-msgs trajectory-msgs sensor-msgs cob-srvs actionlib std-msgs dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
