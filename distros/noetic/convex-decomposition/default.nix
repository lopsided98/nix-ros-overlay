
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, unzip }:
buildRosPackage {
  pname = "ros-noetic-convex-decomposition";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/convex_decomposition-release/archive/release/noetic/convex_decomposition/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "bc47b7c456b6dc779558c0819365ce50602c14ec304799195c535965f17b4507";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Convex Decomposition Tool for Robot Model'';
    license = with lib.licenses; [ mit ];
  };
}
