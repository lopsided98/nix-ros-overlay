
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-trajectory-control, catkin, uuv-thruster-manager, uuv-control-cascaded-pid, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-rexrov2-control";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/uuvsimulator/rexrov2-release/archive/release/kinetic/rexrov2_control/0.1.3-0.tar.gz;
    sha256 = "4313a61c90265493b98b4c6805a53a7a337a90fbd0ad81f3a8ee74df75ee9c88";
  };

  propagatedBuildInputs = [ gazebo-ros uuv-trajectory-control uuv-thruster-manager uuv-control-cascaded-pid gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rexrov2_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
