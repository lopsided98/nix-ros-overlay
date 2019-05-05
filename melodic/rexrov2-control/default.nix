
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-trajectory-control, catkin, uuv-thruster-manager, uuv-control-cascaded-pid, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-melodic-rexrov2-control";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/uuvsimulator/rexrov2-release/archive/release/melodic/rexrov2_control/0.1.3-0.tar.gz;
    sha256 = "9a67201f385a31d026e498160846d97db310a798104f41aa97173e6827211ae6";
  };

  propagatedBuildInputs = [ gazebo-ros uuv-trajectory-control uuv-thruster-manager uuv-control-cascaded-pid gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rexrov2_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
