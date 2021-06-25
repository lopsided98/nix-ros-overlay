
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ddynamic-reconfigure-python, message-runtime, python3Packages, rc-reason-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-rc-reason-clients";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/noetic/rc_reason_clients/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "79146598921a250241531a7325675c63fb5a5ac72dd40aaa81730bd674c4697f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ddynamic-reconfigure-python message-runtime python3Packages.requests rc-reason-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
