
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, controller-manager-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-mode-adapter";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_mode_adapter/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "8dd908cec94ca07332ec8df3cfe852189b3c08d25427584bcaf0d9d448d3fabf";
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
