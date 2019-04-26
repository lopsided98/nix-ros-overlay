
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, desistek-saga-description, catkin, uuv-control-cascaded-pid, uuv-thruster-manager }:
buildRosPackage {
  pname = "ros-melodic-desistek-saga-control";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/uuvsimulator/desistek_saga-release/archive/release/melodic/desistek_saga_control/0.3.2-0.tar.gz;
    sha256 = "81fe5ef7f2ef085fcb784c8799971f63dd8f145ea59a04902b1adc9f04eda688";
  };

  propagatedBuildInputs = [ desistek-saga-description uuv-thruster-manager uuv-control-cascaded-pid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files to control the Desistek SAGA ROV'';
    #license = lib.licenses.Apache-2.0;
  };
}
