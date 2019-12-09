
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, dynamic-reconfigure, std-msgs, std-srvs, actionlib, catkin, roscpp, cob-srvs, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-trajectory-controller";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_trajectory_controller/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "49589031541a9e8feaf550fe37dbd9305b1c9d6c7a103639067266d6ac4e202b";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs dynamic-reconfigure std-msgs std-srvs actionlib roscpp cob-srvs control-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs dynamic-reconfigure std-msgs std-srvs actionlib roscpp cob-srvs control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
