
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, trajectory-msgs, catkin, pr2-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mannequin-mode";
  version = "0.6.0";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_mannequin_mode/0.6.0-0.tar.gz;
    sha256 = "7ee4d843071f900cf92e96c1e4008568115276bb1f7cbcdd5ef39c32f19529cf";
  };

  buildInputs = [ pr2-controllers-msgs trajectory-msgs pr2-controller-manager ];
  propagatedBuildInputs = [ pr2-controllers-msgs trajectory-msgs pr2-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mannequin_mode package'';
    #license = lib.licenses.BSD;
  };
}
