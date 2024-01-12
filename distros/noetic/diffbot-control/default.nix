
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diff-drive-controller, hardware-interface, joint-state-controller, robot-state-publisher, roscpp, rosparam-shortcuts, sensor-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-diffbot-control";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_control/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ada0f8358f106cdae3eebc4c2b230777642ea690c221764cdd8d672c0bfa4c99";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager diff-drive-controller hardware-interface joint-state-controller robot-state-publisher roscpp rosparam-shortcuts sensor-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_control package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
