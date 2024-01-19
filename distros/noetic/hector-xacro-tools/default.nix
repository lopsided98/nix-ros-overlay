
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-noetic-hector-xacro-tools";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/noetic/hector_xacro_tools/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "eca907694e740473c669aa65de10cd392a397190dcbb115d0851f2e8258f03ee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_xacro_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
