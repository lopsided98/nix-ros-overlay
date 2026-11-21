
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt-poses }:
buildRosPackage {
  pname = "ros-lyrical-mola-traj-tools";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_traj_tools/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "86e3f275df61b71324f77f2e4bc69f424a4b3282a71bc7c38d1f93af705abf0b";
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
