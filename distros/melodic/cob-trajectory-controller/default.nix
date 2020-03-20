
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-srvs, control-msgs, dynamic-reconfigure, roscpp, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-trajectory-controller";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_trajectory_controller/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "42e4f9f21398b1ee3d044363b2e02fcba4209c372bc018fc6794cba427ac6c13";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib cob-srvs control-msgs dynamic-reconfigure roscpp sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].'';
    license = with lib.licenses; [ asl20 ];
  };
}
