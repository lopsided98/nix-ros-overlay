
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, realtime-tools, control-toolbox, catkin, controller-interface, urdf, angles, forward-command-controller }:
buildRosPackage {
  pname = "ros-melodic-effort-controllers";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/effort_controllers/0.15.0-0.tar.gz;
    sha256 = "52db667f0de73f3ceff16dc3ec2d5e5c3b4a1d67ede0c58c89a53883f194821e";
  };

  propagatedBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox forward-command-controller ];
  nativeBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox catkin forward-command-controller ];

  meta = {
    description = ''effort_controllers'';
    #license = lib.licenses.BSD;
  };
}
