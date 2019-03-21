
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, controller-manager-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-control-mode-adapter";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control_mode_adapter/0.7.3-0.tar.gz;
    sha256 = "0bb2ac3687917f7b71f40a1f7412212c7856dfbfad671230b40bd4271d294757";
  };

  propagatedBuildInputs = [ controller-manager-msgs boost roslint std-msgs roscpp ];
  nativeBuildInputs = [ controller-manager-msgs boost roslint std-msgs catkin roscpp ];

  meta = {
    description = ''The cob_control_mode_adapter package'';
    #license = lib.licenses.Apache 2.0;
  };
}
