
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control, uuv-control-cascaded-pid, uuv-thruster-manager, uuv-trajectory-control }:
buildRosPackage {
  pname = "ros-kinetic-rexrov2-control";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/rexrov2-release/archive/release/kinetic/rexrov2_control/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "4313a61c90265493b98b4c6805a53a7a337a90fbd0ad81f3a8ee74df75ee9c88";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control uuv-control-cascaded-pid uuv-thruster-manager uuv-trajectory-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rexrov2_control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
