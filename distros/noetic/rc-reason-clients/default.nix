
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ddynamic-reconfigure-python, message-runtime, python3Packages, rc-reason-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-rc-reason-clients";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients_ros-release/archive/release/noetic/rc_reason_clients/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "55b139aec55da97a194d9947e1b2be49de36b8740aa25fec91ac021f2ffbc7d8";
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
