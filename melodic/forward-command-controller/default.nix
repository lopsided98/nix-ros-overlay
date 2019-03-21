
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, realtime-tools, catkin, controller-interface, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-forward-command-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/forward_command_controller/0.14.3-0.tar.gz;
    sha256 = "033b65a8cfaadbc143f33b8ef6e9a66a2347bb95a91f651ff2a3121d0bc71a86";
  };

  propagatedBuildInputs = [ std-msgs hardware-interface controller-interface realtime-tools ];
  nativeBuildInputs = [ hardware-interface controller-interface std-msgs realtime-tools catkin ];

  meta = {
    description = ''forward_command_controller'';
    #license = lib.licenses.BSD;
  };
}
