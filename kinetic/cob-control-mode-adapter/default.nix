
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, controller-manager-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-mode-adapter";
  version = "0.7.6-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_mode_adapter/0.7.6-1.tar.gz;
    sha256 = "ba8d7deb4d5a253c439d95eddcbad0e241354f86286de852995ffd0cf5804b2b";
  };

  buildInputs = [ boost roslint controller-manager-msgs std-msgs roscpp ];
  propagatedBuildInputs = [ boost roslint controller-manager-msgs std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_control_mode_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
