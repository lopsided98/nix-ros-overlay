
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-lunar-hector-xacro-tools";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_models-release/archive/release/lunar/hector_xacro_tools/0.5.0-0.tar.gz;
    sha256 = "d4e069a169a72039ff29353e1f0c3fde75ce694a60ca95f92bc8bd3d59d8c03f";
  };

  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_xacro_tools'';
    #license = lib.licenses.BSD;
  };
}
