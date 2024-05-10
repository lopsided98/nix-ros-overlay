
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-srvs, control-msgs, dynamic-reconfigure, roscpp, sensor-msgs, std-msgs, std-srvs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-trajectory-controller";
  version = "0.8.24-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_control-release/archive/release/noetic/cob_trajectory_controller/0.8.24-2.tar.gz";
    name = "0.8.24-2.tar.gz";
    sha256 = "a68792831480e3f0ddb11f9d964466508bfe913e4d2f63567a2b0b2118ce3ff8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib cob-srvs control-msgs dynamic-reconfigure roscpp sensor-msgs std-msgs std-srvs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package provides a trajectory controller which controlls velocities for a chain of joints. This controller can be used e.g. with [[schunk_powercube_chain]].";
    license = with lib.licenses; [ asl20 ];
  };
}
