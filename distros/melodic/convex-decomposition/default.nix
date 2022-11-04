
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, unzip }:
buildRosPackage {
  pname = "ros-melodic-convex-decomposition";
  version = "0.1.12";

  src = fetchurl {
    url = "https://github.com/ros-gbp/convex_decomposition-release/archive/release/melodic/convex_decomposition/0.1.12-0.tar.gz";
    name = "0.1.12-0.tar.gz";
    sha256 = "853e052839ccfe26f6ae8d94e157ad06cfa7c520c3fe12cf33783107caeee369";
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
