
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control, uuv-control-cascaded-pid, uuv-thruster-manager, uuv-trajectory-control }:
buildRosPackage {
  pname = "ros-melodic-rexrov2-control";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/rexrov2-release/archive/release/melodic/rexrov2_control/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "9a67201f385a31d026e498160846d97db310a798104f41aa97173e6827211ae6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control uuv-control-cascaded-pid uuv-thruster-manager uuv-trajectory-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rexrov2_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
