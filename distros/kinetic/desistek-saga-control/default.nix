
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, desistek-saga-description, uuv-control-cascaded-pid, uuv-thruster-manager }:
buildRosPackage {
  pname = "ros-kinetic-desistek-saga-control";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/desistek_saga-release/archive/release/kinetic/desistek_saga_control/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "c222fd0a9fd29c83d4184df17dd934422867c17afd61a18ba22a4047e601eae3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ desistek-saga-description uuv-control-cascaded-pid uuv-thruster-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files to control the Desistek SAGA ROV'';
    license = with lib.licenses; [ asl20 ];
  };
}
