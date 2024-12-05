
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ddynamic-reconfigure-python, message-runtime, python3Packages, rc-reason-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-rc-reason-clients";
  version = "0.4.0-r2";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/noetic/rc_reason_clients/0.4.0-2.tar.gz";
    name = "0.4.0-2.tar.gz";
    sha256 = "15a2a445c8fb9612cfb3bb1731293d2c665e0ecd7fae508cb6e270892070df24";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ddynamic-reconfigure-python message-runtime python3Packages.requests rc-reason-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Clients for interfacing with Roboception reason modules on rc_visard and rc_cube.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
