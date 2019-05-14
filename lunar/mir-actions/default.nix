
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, nav-msgs, message-runtime, actionlib, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mir-actions";
  version = "1.0.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/mir_actions/1.0.4-1.tar.gz;
    sha256 = "6c077f3b839ad36ad3d5ad34d14ed2983465caf1dab83e61e84866078fcf0652";
  };

  buildInputs = [ nav-msgs message-generation geometry-msgs actionlib ];
  propagatedBuildInputs = [ nav-msgs message-runtime geometry-msgs actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Action definitions for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
