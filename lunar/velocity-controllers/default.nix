
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, control-toolbox, realtime-tools, catkin, controller-interface, urdf, angles, forward-command-controller }:
buildRosPackage {
  pname = "ros-lunar-velocity-controllers";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/velocity_controllers/0.13.4-0.tar.gz;
    sha256 = "87615be0591915a3f0e7806f9d09c1f2c85a4413a74f3b73cf9eacb97fa26c8c";
  };

  buildInputs = [ control-msgs control-toolbox realtime-tools controller-interface urdf angles forward-command-controller ];
  propagatedBuildInputs = [ control-msgs control-toolbox realtime-tools controller-interface urdf angles forward-command-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''velocity_controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
