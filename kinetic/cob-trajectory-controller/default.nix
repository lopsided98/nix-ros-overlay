
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, control-msgs, trajectory-msgs, sensor-msgs, catkin, cob-srvs, actionlib, std-msgs, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-trajectory-controller";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_trajectory_controller/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "f1f2f855be9da0a1ba59d84c3c20dc66b67052ec9b2243698825bac31c75bcb7";
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
