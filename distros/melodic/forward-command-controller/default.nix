
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-forward-command-controller";
  version = "0.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/forward_command_controller/0.16.1-1.tar.gz";
    name = "0.16.1-1.tar.gz";
    sha256 = "c44eafec99c5d1625187d02225b2231089e39f599df2e9e9404b708ac89867f8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''forward_command_controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
