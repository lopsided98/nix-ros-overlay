
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, control-toolbox, realtime-tools, catkin, controller-interface, urdf, angles, forward-command-controller }:
buildRosPackage {
  pname = "ros-lunar-effort-controllers";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/effort_controllers/0.13.4-0.tar.gz;
    sha256 = "4c926abd28489aa5292ee4c8cf4dc28d2376cc6cc1c751f9f24faf69df5280e9";
  };

  buildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox forward-command-controller ];
  propagatedBuildInputs = [ realtime-tools urdf controller-interface control-msgs angles control-toolbox forward-command-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''effort_controllers'';
    #license = lib.licenses.BSD;
  };
}
