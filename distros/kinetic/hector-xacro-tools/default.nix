
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-kinetic-hector-xacro-tools";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/kinetic/hector_xacro_tools/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "53d61c582555f9d3e09d8c1e5e6b4f60cc5c2792f0fefa8a72868c611f3d2712";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_xacro_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
