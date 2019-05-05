
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, desistek-saga-description, catkin, uuv-control-cascaded-pid, uuv-thruster-manager }:
buildRosPackage {
  pname = "ros-lunar-desistek-saga-control";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/uuvsimulator/desistek_saga-release/archive/release/lunar/desistek_saga_control/0.3.2-0.tar.gz;
    sha256 = "fb1d77e5a2b599568c9cf55e87dbdb828f4842c53c23c63ceac67c8e5e75924c";
  };

  propagatedBuildInputs = [ desistek-saga-description uuv-thruster-manager uuv-control-cascaded-pid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Configuration and launch files to control the Desistek SAGA ROV'';
    license = with lib.licenses; [ asl20 ];
  };
}
