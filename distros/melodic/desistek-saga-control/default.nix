
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, desistek-saga-description, uuv-control-cascaded-pid, uuv-thruster-manager }:
buildRosPackage {
  pname = "ros-melodic-desistek-saga-control";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/desistek_saga-release/archive/release/melodic/desistek_saga_control/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "81fe5ef7f2ef085fcb784c8799971f63dd8f145ea59a04902b1adc9f04eda688";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ desistek-saga-description uuv-control-cascaded-pid uuv-thruster-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files to control the Desistek SAGA ROV'';
    license = with lib.licenses; [ asl20 ];
  };
}
