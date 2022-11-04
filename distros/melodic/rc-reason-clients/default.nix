
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ddynamic-reconfigure-python, message-runtime, pythonPackages, rc-reason-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-rc-reason-clients";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/melodic/rc_reason_clients/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "5680aca20acb26716ada6a8fb89a11b099535eab0eea9976e07cb35e2379feb9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ddynamic-reconfigure-python message-runtime pythonPackages.requests rc-reason-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
