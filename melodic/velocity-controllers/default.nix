
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, realtime-tools, control-toolbox, catkin, controller-interface, urdf, angles, forward-command-controller }:
buildRosPackage {
  pname = "ros-melodic-velocity-controllers";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/velocity_controllers/0.14.3-0.tar.gz;
    sha256 = "f3c0c8d380a7946264056606e4949100e25b13cbb85ec6692a9d162552ff1344";
  };

  propagatedBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox forward-command-controller ];
  nativeBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox catkin forward-command-controller ];

  meta = {
    description = ''velocity_controllers'';
    #license = lib.licenses.BSD;
  };
}
