
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, realtime-tools, urdf }:
buildRosPackage {
  pname = "ros-melodic-effort-controllers";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/effort_controllers/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "52db667f0de73f3ceff16dc3ec2d5e5c3b4a1d67ede0c58c89a53883f194821e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface forward-command-controller realtime-tools urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''effort_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
