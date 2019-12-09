
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-interface, hardware-interface, std-msgs, catkin, realtime-tools }:
buildRosPackage {
  pname = "ros-melodic-forward-command-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/forward_command_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "811c1ec365f2d1e20a0c2269f4b678683e6b71788a4adc5c64379e3e523c2ab0";
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
