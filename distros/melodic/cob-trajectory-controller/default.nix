
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-srvs, control-msgs, dynamic-reconfigure, roscpp, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-trajectory-controller";
  version = "0.8.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_trajectory_controller/0.8.11-1.tar.gz";
    name = "0.8.11-1.tar.gz";
    sha256 = "219bfea9617272c33e4181c8800843a638555b413b35218e5a255aabf12d74dc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cob-srvs control-msgs dynamic-reconfigure roscpp sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
