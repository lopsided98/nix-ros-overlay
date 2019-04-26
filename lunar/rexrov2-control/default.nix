
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-trajectory-control, catkin, uuv-thruster-manager, uuv-control-cascaded-pid, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-lunar-rexrov2-control";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/uuvsimulator/rexrov2-release/archive/release/lunar/rexrov2_control/0.1.3-0.tar.gz;
    sha256 = "4f16f5bcb6376c6e958070096eadaf3469024713d508861103699d459942c9ae";
  };

  propagatedBuildInputs = [ gazebo-ros uuv-control-cascaded-pid gazebo-ros-control uuv-trajectory-control uuv-thruster-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rexrov2_control package'';
    #license = lib.licenses.Apache-2.0;
  };
}
