
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, orocos-kdl, python-orocos-kdl }:
buildRosPackage {
  pname = "ros-melodic-orocos-kinematics-dynamics";
  version = "1.4.0";

  src = fetchurl {
    url = "https://github.com/orocos/orocos-kdl-release/archive/release/melodic/orocos_kinematics_dynamics/1.4.0-0.tar.gz";
    name = "1.4.0-0.tar.gz";
    sha256 = "2ba6018b3fbbced816694fafd40bf7a9eea586ee7955ec91e4de7864493a2150";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ orocos-kdl python-orocos-kdl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package depends on a recent version of the Kinematics and Dynamics
    Library (KDL), distributed by the Orocos Project. It is a meta-package that
    depends on kdl which contains the c++ version and pykdl which contains the
    generated python bindings.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
