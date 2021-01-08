
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, forward-command-controller, realtime-tools, urdf }:
buildRosPackage {
  pname = "ros-kinetic-velocity-controllers";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/velocity_controllers/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "8b1ec59295221c870c9ec1f21cb8768fbbf5e670bf8d3501287995144c9f292b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface forward-command-controller realtime-tools urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
