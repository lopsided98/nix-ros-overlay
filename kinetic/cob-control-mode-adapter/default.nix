
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, controller-manager-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-mode-adapter";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_mode_adapter/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "91bf92f55b690953ae56bfc0dfa8bb952c7b0be780a56bd51ab1889dd5413294";
  };

  buildType = "catkin";
  buildInputs = [ boost roslint controller-manager-msgs std-msgs roscpp ];
  propagatedBuildInputs = [ boost roslint controller-manager-msgs std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_control_mode_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
