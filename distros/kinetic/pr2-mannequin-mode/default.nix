
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-manager, pr2-controllers-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mannequin-mode";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_mannequin_mode/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "7ee4d843071f900cf92e96c1e4008568115276bb1f7cbcdd5ef39c32f19529cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-controller-manager pr2-controllers-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mannequin_mode package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
