
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-poses }:
buildRosPackage {
  pname = "ros-kilted-mola-traj-tools";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_traj_tools/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "ee73bb5b7b2db9a25327fe2f6412a5b43dba71e5bc7fbf7f84baf9e762f7ced5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "CLI tools to manipulate trajectory files as a complement to the evo package";
    license = with lib.licenses; [ bsd3 ];
  };
}
