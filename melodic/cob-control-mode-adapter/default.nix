
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, controller-manager-msgs, std-msgs, catkin, roslint, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-control-mode-adapter";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_control_mode_adapter/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "e9f645239ae0f8c11405e5417b45d85db5aa2da90a8903d4c6b9a876b59fa713";
  };

  buildType = "catkin";
  buildInputs = [ boost controller-manager-msgs std-msgs roslint roscpp ];
  propagatedBuildInputs = [ boost controller-manager-msgs std-msgs roslint roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_control_mode_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
