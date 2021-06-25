
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ddynamic-reconfigure-python, message-runtime, pythonPackages, rc-reason-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-rc-reason-clients";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/melodic/rc_reason_clients/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "773d5496e448df0f049a9c7280153920e3040461070b2b9cb5a131bcfcec71a5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ddynamic-reconfigure-python message-runtime pythonPackages.requests rc-reason-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
