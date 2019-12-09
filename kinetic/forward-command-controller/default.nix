
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, hardware-interface, std-msgs, catkin, realtime-tools }:
buildRosPackage {
  pname = "ros-kinetic-forward-command-controller";
  version = "0.13.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/forward_command_controller/0.13.5-0.tar.gz";
    name = "0.13.5-0.tar.gz";
    sha256 = "c837c1c4f2e07d4a0709cf9d824f9e4add7dd083a5bd26945d335746e78b6e66";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface std-msgs realtime-tools controller-interface ];
  propagatedBuildInputs = [ hardware-interface std-msgs realtime-tools controller-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''forward_command_controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
